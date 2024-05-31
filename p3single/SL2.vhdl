-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
-- Entity Overview:
-- Shift left 2

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity SL2 is
    generic (
        WORD_WIDTH : integer := 32
    ) ;

    port (
    SL_IN   : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    SL_OUT  : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity SL2;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of SL2 is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------

    SL_OUT <= SL_IN(WORD_WIDTH-3 downto 0) & "00";

end architecture;
-- end architecture

-- end of file

