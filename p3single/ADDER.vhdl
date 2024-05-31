-- Author: Josh White
-- Date created:  2023-04-24
-- Date modified: 2023-04-24
-- Entity Overview:
-- Adds two words. Assumes they are unsigned.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity ADDER is
    generic (
    WORD_WIDTH : integer := 32
    ) ;

    port (
    IN0 : in  std_logic_vector(WORD_WIDTH-1 downto 0); -- PC_ADD4
    IN1 : in  std_logic_vector(WORD_WIDTH-1 downto 0); -- PC_BRANCH_ADDR
    OUTPUT : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity ADDER;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of ADDER is
    
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
AddThem : process(IN0, IN1) is
begin
    OUTPUT <= std_logic_vector(unsigned(IN0) + unsigned(IN1));
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

