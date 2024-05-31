-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-23
-- Entity Overview:
--      Pipeline register entity.
--      "Pipeline" input indicates whether or not we are using the pipeline.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity PIPELINE_REG is
    generic (
    n : integer := 32
    ) ;

    port (
    CLK         : in  std_logic;
    Pipeline    : in  std_logic; -- 0 = single cycle, 1 = pipeline.
    REG_IN      : in  std_logic_vector(n-1 downto 0);
    REG_OUT     : out std_logic_vector(n-1 downto 0)
    ) ;
end entity PIPELINE_REG;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of PIPELINE_REG is
    
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
updateReg : process(CLK, REG_IN) is
begin
    if    Pipeline = '0'                       then REG_OUT <= REG_IN;
    elsif Pipeline = '1' AND rising_edge(CLK)  then REG_OUT <= REG_IN;
    end if;

end process;
-- Process end

end architecture;
-- end architecture

-- end of file

