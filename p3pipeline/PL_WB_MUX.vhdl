-- Author: Josh White
-- Date created:  2023-04-23
-- Date modified: 2023-04-23
-- Entity Overview:
-- This is the Writeback MUX. It can handle single cycle or pipelined
-- implementation.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity PL_WB_MUX is
    generic (
        WORD_WIDTH : integer := 32
    ) ;
    port (
        Pipeline    : in  std_logic; -- enable bit for pipeline
        NP_SEL_IN   : in  std_logic;
        NP_IN0_IN   : in  std_logic_vector(WORD_WIDTH-1 downto 0);
        NP_IN1_IN   : in  std_logic_vector(WORD_WIDTH-1 downto 0);
        YP_SEL_IN   : in  std_logic;
        YP_IN0_IN   : in  std_logic_vector(WORD_WIDTH-1 downto 0);
        YP_IN1_IN   : in  std_logic_vector(WORD_WIDTH-1 downto 0);
        OUTPUT      : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity PL_WB_MUX;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of PL_WB_MUX is
    
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
UpdateOutput : process(Pipeline, NP_SEL_IN, NP_IN0_IN, NP_IN1_IN,
        YP_SEL_IN, YP_IN0_IN, YP_IN1_IN) is
begin
    if (Pipeline = '1') then
        if (NP_SEL_IN = '0') then OUTPUT <= NP_IN0_IN;
        else OUTPUT <= NP_IN1_IN;
        end if;
    else -- pipeline = '1'
        if (YP_SEL_IN = '0') then OUTPUT <= YP_IN0_IN;
        else OUTPUT <= YP_IN1_IN;
        end if;
    end if; 
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

