-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
-- Entity Overview:
-- This entity is a register with generic one-word width.
-- It updates the output only on the rising edge of the clock.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity GEN_REG is
    generic (
    WORD_WIDTH : integer := 32
    ) ;

    port (
    CLK     : in  std_logic;
    RegWrite: in  std_logic;
    REG_IN  : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    REG_OUT : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity GEN_REG;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of GEN_REG is
    
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
UpdateRegister : process(CLK) is
begin
    if rising_edge(CLK) and RegWrite = '1' then
        REG_OUT <= REG_IN;
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

