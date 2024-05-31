-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
-- Entity Overview:
-- This entity is used exclusively to shift the instruction bits over by two
-- to appropriately assign the jump address for the PC. (jump instr)

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity JUMP_SHIFT is
    port (
    J_IN  : in  std_logic_vector(25 downto 0);
    J_OUT : out std_logic_vector(27 downto 0)
    ) ;
end entity JUMP_SHIFT;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of JUMP_SHIFT is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------

    J_OUT <= J_IN & "00";


end architecture;
-- end architecture

-- end of file

