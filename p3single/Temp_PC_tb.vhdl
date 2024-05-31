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
entity Temp_PC_tb is
end entity Temp_PC_tb;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture tb of Temp_PC_tb is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------
    constant WORD_WIDTH : integer := 32;

    signal PC_IN  : std_logic_vector(WORD_WIDTH-1 downto 0) := x"DEADBEEF";
    signal PC_OUT : std_logic_vector(WORD_WIDTH-1 downto 0) := x"BEEFBEEF";

    signal CLK : std_logic := '0';


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------
    UUT : entity work.PC
        generic map (WORD_WIDTH)
        port map (
            CLK,
            PC_IN,
            PC_OUT);

    CLK <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
    PC_Write <= '0', '1' after 8 ns, '0' after 20 ns, '1' after 30 ns;
    PC_IN <= x"0000BEEF", x"0000DEAD" after 5 ns, x"00000000" after 12 ns, x"BEEFFEED" after 20 ns;




end architecture;
-- end architecture

-- end of file
-- Author: Josh White
-- Date created:  date
-- Date modified: date
-- Testbench Overview:

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity ENTITY_NAME_N is
end entity ENTITY_NAME_N;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture ARCH_TYPE_A of ENTITY_NAME_N is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------
    DUT_EX : entity work.DUT_EX
        generic map (n)
        port map (A, B, C);


-- Process begin
exampleProcess : process(CLK, A, B) is
begin

end process;
-- Process end

end architecture;
-- end architecture

-- end of testbench


