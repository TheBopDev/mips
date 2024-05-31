-- Author: Josh White
-- Date created:  2023-04-19
-- Date modified: 2023-04-22
-- Entity Overview:
--      This entity handles the forwarding for the execution unit
--      Blah
--      Blah
--      Blah

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity FWD_UNIT is
    port (
    DE_EX_RT        : in  std_logic_vector(4 downto 0);
    DE_EX_RS        : in  std_logic_vector(4 downto 0);
    EX_MEM_RD       : in  std_logic_vector(4 downto 0);
    EX_MEM_RegWrite : in  std_logic;
    MEM_WB_RD       : in  std_logic_vector(4 downto 0);
    MEM_WB_RegWrite : in  std_logic;
    FWD_A_ALU_SEL   : out std_logic_vector(1 downto 0);
    FWD_B_ALU_SEL   : out std_logic_vector(1 downto 0)
    ) ;
end entity FWD_UNIT;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of FWD_UNIT is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------

begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------

-- Process begin
Forwarding : process(DE_EX_RT, DE_EX_RS, EX_MEM_RD, EX_MEM_RegWrite, MEM_WB_RD, MEM_WB_RegWrite) is
begin
    -- Clear to default values first
    FWD_A_ALU_SEL <= "00";
    FWD_B_ALU_SEL <= "00";

    -- Process conditions
    -- Execution forwarding
    if (EX_MEM_RegWrite = '1') and (EX_MEM_RD = DE_EX_RS) then FWD_A_ALU_SEL <= "10";
    end if;

    if (EX_MEM_RegWrite = '1') and (EX_MEM_RD = DE_EX_RT) then FWD_B_ALU_SEL <= "10";
    end if;
    
    -- Memory forwarding
    if (MEM_WB_RegWrite = '1') and (MEM_WB_RD = DE_EX_RS) and (EX_MEM_RD /= DE_EX_RS) then FWD_A_ALU_SEL <= "01";
    end if;

    if (MEM_WB_RegWrite = '1') and (MEM_WB_RD = DE_EX_RT) and (EX_MEM_RD /= DE_EX_RT) then FWD_B_ALU_SEL <= "01";
    end if;


end process;
-- Process end

end architecture;
-- end architecture

-- end of file

