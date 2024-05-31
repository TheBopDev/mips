-- Author: Josh White
-- Date created:  2023-04-23
-- Date modified: 2023-04-23
-- Entity Overview:
-- Pipeline reg for IF/ID only

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity IFDE_REG is
    port (
    CLK             : in  std_logic;
    Pipeline        : in  std_logic;
    IF_DE_Write     : in  std_logic; -- Write to IF/DE (stall)
    IF_DE_PC_IN     : in  std_logic_vector(31 downto 0);
    IF_DE_INSTR_IN  : in  std_logic_vector(31 downto 0);
    IF_DE_PC_OUT    : out std_logic_vector(31 downto 0);
    IF_DE_INSTR_OUT : out std_logic_vector(31 downto 0)
    ) ;
end entity IFDE_REG;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of IFDE_REG is
    
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
updateReg : process(CLK) is
begin
    if rising_edge(CLK) and (IF_DE_Write = '1') then
        IF_DE_PC_OUT    <= IF_DE_PC_IN;
        IF_DE_INSTR_OUT <= IF_DE_INSTR_IN;
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

