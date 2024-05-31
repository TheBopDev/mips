-- Author: Josh White
-- Date created:  2023-04-24
-- Date modified: 2023-04-24
-- Entity Overview:
-- This handles the pipeline'd version of RegDst.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity REG_DST_MUX is
    generic (
    ADDR_WIDTH : integer := 5
    ) ;

    port (
    Pipeline    : in  std_logic; -- Enable pipeline
    NP_SEL_IN   : in  std_logic; -- RegDst (immediately from control)
    NP_IN0_IN   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    NP_IN1_IN   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    YP_SEL_IN   : in  std_logic; -- Pipeline Sel (DE_EX_RegDst_OUT)
    YP_IN0_IN   : in  std_logic_vector(ADDR_WIDTH-1 downto 0); -- DE_EX_RT_OUT
    YP_IN1_IN   : in  std_logic_vector(ADDR_WIDTH-1 downto 0); -- DE_EX_RD_OUT
    RegDst_OUT  : out std_logic_vector(ADDR_WIDTH-1 downto 0)  -- Address to pass
    ) ;
end entity REG_DST_MUX;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of REG_DST_MUX is
    
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
exampleProcess : process(Pipeline, NP_SEL_IN, NP_IN0_IN, NP_IN1_IN,
    YP_IN0_IN, YP_IN1_IN) is
begin
    if (Pipeline = '0') then 
        if (NP_SEL_IN = '0') then RegDst_OUT <= NP_IN0_IN;
        else RegDst_OUT <= NP_IN1_IN;
        end if;
    else -- Pipeline = '1'
        if (YP_SEL_IN = '0') then RegDst_OUT <= YP_IN0_IN;
        else RegDst_OUT <= YP_IN1_IN;
        end if;
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

