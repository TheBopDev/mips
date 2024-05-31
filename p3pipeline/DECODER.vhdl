-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
-- Entity Overview:
-- This is the decoder, used to decide which register to write to.
-- The output is a generic word length one-hot vector.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity DECODER is
    generic (
        WORD_WIDTH : integer := 32
    );
    port (
        ADDR    : in  std_logic_vector(4 downto 0);
        OUTPUT  : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity DECODER;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of DECODER is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------
    signal sel : integer := 0;

begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------
    
    -- Convert the address to an integer
updateSel : process(ADDR) is
begin
    sel <= to_integer(unsigned(ADDR));
end process;


-- Process begin
OnehotOut : process(ADDR) is
begin
    OUTPUT <= (others => '0'); -- Clear the output first
    OUTPUT(sel) <= '1'; -- Set the output to 1
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

