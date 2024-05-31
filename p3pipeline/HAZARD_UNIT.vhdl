-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
-- Entity Overview:
-- Hazard unit control path

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity HAZARD_UNIT is
    port (
    DEEX_RT         : in  std_logic_vector(4 downto 0);
    DEEX_MemRead    : in  std_logic;
    IFDE_RS         : in  std_logic_vector(4 downto 0);
    IFDE_RT         : in  std_logic_vector(4 downto 0);
    stall           : out std_logic;
    IFDE_Write      : out std_logic;
    PC_Write        : out std_logic
    ) ;
end entity HAZARD_UNIT;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of HAZARD_UNIT is
    
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
    updateOutputs : process(DEEX_RT, DEEX_MemRead, IFDE_RS, IFDE_RT) is
begin
    -- Check for hazard condition
    if (DEEX_MemRead = '1' and ((IFDE_RS = DEEX_RT) or (IFDE_RT = DEEX_RT))) then
        stall <= '1';
        IFDE_Write <= '0';
        PC_Write <= '0';
    else -- No hazard
        stall <= '0';
        IFDE_Write <= '1';
        PC_Write <= '1';
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

