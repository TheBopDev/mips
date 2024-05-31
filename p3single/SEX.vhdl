-- Author: Josh White
-- Date created:  2023-04-24
-- Date modified: 2023-04-24
-- Entity Overview:

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity SEX is
    generic (
    WORD_WIDTH : integer := 32
    ) ;

    port (
    A : in   std_logic_vector((WORD_WIDTH/2)-1 downto 0);
    B : out  std_logic_vector( WORD_WIDTH-1 downto 0)
    ) ;
end entity SEX;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of SEX is
    
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
UpdateOut : process(A) is
begin
    -- Check the most significant bit and then sign extend
    if (A((WORD_WIDTH/2)-1) = '1') then B <= (x"FFFF" & A);
    else B <= (x"0000" & A);
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

