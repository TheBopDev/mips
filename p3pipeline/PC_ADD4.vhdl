-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-18
-- Entity Overview:
--      Adds two 32-bit unsigned numbers together.
--      Used to update the program counter to loop through the instruction
--      memory.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity PC_ADD4 is
    port (
    PC_IN   : in  std_logic_vector(31 downto 0);
    CONST4  : in  std_logic_vector(31 downto 0); -- x"00000004"
    PC_OUT  : out std_logic_vector(31 downto 0)
    ) ;
end entity PC_ADD4;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of PC_ADD4 is
    
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
UpdatePCBy4 : process(PC_IN) is
begin
    PC_OUT <= std_logic_vector(unsigned(PC_IN) + unsigned(CONST4));
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

