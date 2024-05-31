-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
-- Entity Overview:
-- Performs the addition operation of two generic length words.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity BRANCH_ADDER is
    generic (
    WORD_WIDTH : integer := 32
    ) ;

    port (
    IN0     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN1     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    OUTPUT  : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity BRANCH_ADDER;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of BRANCH_ADDER is
    
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
exampleProcess : process(IN0, IN1) is
begin
    OUTPUT <= std_logic_vector(to_unsigned(to_integer(unsigned(IN0)) + to_integer(unsigned(IN1)), WORD_WIDTH));    
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

