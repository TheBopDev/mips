-- Author: Josh White
-- Date created:  2023-04-23
-- Date modified: 2023-04-23
-- Entity Overview:
-- Moved the mux into its own entity to make it easier to read the rtl viewer.
-- This is the branch mux. It modifies its output based on the pipeline enable.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity PL_BRANCH_MUX is
    port (
        Pipeline    : in  std_logic; -- Choose between pipeline or single cycle
        NP_BRANCH   : in  std_logic; -- No pipeline, branch
        NP_ALU_ZFLG : in  std_logic; -- No pipeline, ALU zero flag
        NP_IN0_IN   : in  std_logic_vector(31 downto 0); -- No pipeline, input 0
        NP_IN1_IN   : in  std_logic_vector(31 downto 0); -- No pipeline, input 1
        YP_SEL_IN   : in  std_logic; -- Pipeline, Execute stage, select
        YP_IN0_IN   : in  std_logic_vector(31 downto 0); -- Yes pipeline, input 0
        YP_IN1_IN   : in  std_logic_vector(31 downto 0); -- Yes pipeline, input 1
        OUTPUT      : out std_logic_vector(31 downto 0)  -- Output
    ) ;
end entity PL_BRANCH_MUX;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of PL_BRANCH_MUX is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------
    signal NP_SEL : std_logic;

begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------
    NP_SEL <= NP_ALU_ZFLG AND NP_BRANCH;

-- Process begin
UpdateOUT : process(Pipeline, NP_SEL, NP_IN0_IN, NP_IN1_IN,
        YP_SEL_IN, YP_IN0_IN, YP_IN1_IN) is
begin
    if (Pipeline = '0') then -- no pipeline
        if (NP_SEL = '0') then OUTPUT <= NP_IN0_IN;
        else OUTPUT <= NP_IN1_IN;
        end if;
    else -- Pipeline = '1'
        if (YP_SEL_IN = '0') then OUTPUT <= YP_IN0_IN;
        else OUTPUT <= YP_IN1_IN;
        end if;
    end if;

end process;
-- Process end

end architecture;
-- end architecture

-- end of file

