-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
-- Entity Overview:
-- 3 input mux with generic word width.
-- If the bonus is zero, then we pass the first input to the output.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity MUX3 is
    generic (
    WORD_WIDTH : integer := 32
    ) ;

    port (
    bonus       : in std_logic;
    Sel         : in  std_logic_vector(1 downto 0);
    IN_SINGLE   : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN0         : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN1         : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN2         : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    OUTPUT      : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity MUX3;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of MUX3 is
    
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
exampleProcess : process(Sel, IN_SINGLE, IN0, IN1, IN2, bonus) is
begin
    if      bonus = '0' then OUTPUT <= IN_SINGLE;
    elsif   bonus = '1' then
        if      Sel = "00" then OUTPUT <= IN0;
        elsif   Sel = "01" then OUTPUT <= IN1;
        elsif   Sel = "10" then OUTPUT <= IN2;
        end if;
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

