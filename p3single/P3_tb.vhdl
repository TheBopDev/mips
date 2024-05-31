-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-18
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
entity P3_tb is
end entity P3_tb;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of P3_tb is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------
    signal CLK : std_logic := '0';
    signal RST : std_logic := '0';

    constant WORD_WIDTH : integer := 32;
    constant ADDR_WIDTH : integer := 5;


    signal PC_OUT       : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal INSTR        : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal Reg1Data     : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal Reg2Data     : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal WriteData    : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DMEM_ADDR    : std_logic_vector(7 downto 0);
    signal DMEM_Write   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DMEM_Read    : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_OP       : std_logic_vector(3 downto 0);
    signal ALU_RESULT   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal WR_EN        : std_logic;
    signal BRANCH       : std_logic;
    signal BRANCH_TAKEN : std_logic;
    signal SL2_OUT      : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_SRC      : std_logic;
    signal RegWrite     : std_logic;
    signal MemWrite     : std_logic;
    signal WiteRegDst   : std_logic_vector(ADDR_WIDTH-1 downto 0);



begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------
    UUT : entity work.P3_top
        generic map(
            WORD_WIDTH,
            ADDR_WIDTH)
        port map(
            CLK,
            RST,
            PC_OUT,
            INSTR,
            Reg1Data,
            Reg2Data,
            WriteData,
            DMEM_ADDR,
            DMEM_Write,
            DMEM_Read,
            ALU_OP,
            ALU_RESULT,
            WR_EN,
            BRANCH,
            BRANCH_TAKEN,
            SL2_OUT,
            ALU_SRC,
            RegWrite,
            MemWrite,
            WiteRegDst);



    CLK <= not CLK after 5 ns;

process is
begin
    wait for 100 ns;
    RST <= '1';
    wait for 100 ns;
    RST <= '0';
    wait;
end process;



end architecture;
-- end architecture

-- end of testbench


