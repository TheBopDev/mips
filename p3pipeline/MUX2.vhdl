-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-18
-- Entity Overview:
--      This implements a 32-bit 2-to-1 MUX.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity MUX2 is
    generic (
    n : integer := 32
    ) ;

    port (
    SEL     : in  std_logic;
    IN0     : in  std_logic_vector(n - 1 downto 0);
    IN1     : in  std_logic_vector(n - 1 downto 0);
    OUTPUT  : out std_logic_vector(n - 1 downto 0)
    ) ;
end entity MUX2;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of MUX2 is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------


begin -- architecture

-- Process begin
MUXProcess : process(SEL, IN0, IN1) is
begin
    if    SEL = '0' then OUTPUT <= IN0;
    elsif SEL = '1' then OUTPUT <= IN1;
    -- else  OUTPUT <= x"DEADBEEF"; -- Used to debug bad synthesis
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

