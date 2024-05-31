-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-24
-- Entity Overview:
--      Update the PC on the rising edge of the clock
-- Updated to include stall functionality and to make it generic word width

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity PC is
    generic (
        WORD_WIDTH : integer := 32
    ) ;

    port (
    CLK         : in  std_logic;
    PC_Write    : in  std_logic; -- For stall
    PC_IN       : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    PC_OUT      : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity PC;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of PC is
    
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
UpdatePC : process(CLK) is
begin
    if rising_edge(CLK) then
        PC_OUT <= PC_IN;
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

