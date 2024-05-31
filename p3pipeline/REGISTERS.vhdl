-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
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
entity REGISTERS is
    generic (
    WORD_WIDTH : integer := 32;
    ADDR_WIDTH : integer := 5
    ) ;

    port (
    CLK         : in  std_logic;
    ReadReg1    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    ReadReg2    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    WriteReg    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    WriteData   : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    RegWrite    : in  std_logic;
    ReadData1   : out std_logic_vector(WORD_WIDTH-1 downto 0);
    ReadData2   : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity REGISTERS;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture structural of REGISTERS is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------
    -- Generate an array of 32 elements, each element is a logic vector
    -- that contains one word of information.
    type vector is array (0 to 31) of std_logic_vector(WORD_WIDTH-1 downto 0);
    signal RegOut : vector; 

    signal AND_OUT : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DECODER_OUT : std_logic_vector(WORD_WIDTH-1 downto 0);

begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------
    
    -- Generate the ands and registers
    GEN_INS:
        for i in 0 to 31 generate
            ANDX : entity work.AND2BIT
                port map (
                    RegWrite,
                    DECODER_OUT(i), -- one-hot vector
                    AND_OUT(i) -- one-hot vector
                    );
            REGX : entity work.GEN_REG
                generic map (WORD_WIDTH)
                port map (
                    CLK,
                    AND_OUT(i),
                    WriteData,
                    RegOut(i)
                    );
        end generate GEN_INS;


    -- Mux for ReadReg1
    DUT_READREG1_MUX : entity work.MUX32
        generic map (WORD_WIDTH)
        port map (
            ReadReg1, -- Select bits
            RegOut(0),
            RegOut(1),
            RegOut(2),
            RegOut(3),
            RegOut(4),
            RegOut(5),
            RegOut(6),
            RegOut(7),
            RegOut(8),
            RegOut(9),
            RegOut(10),
            RegOut(11),
            RegOut(12),
            RegOut(13),
            RegOut(14),
            RegOut(15),
            RegOut(16),
            RegOut(17),
            RegOut(18),
            RegOut(19),
            RegOut(20),
            RegOut(21),
            RegOut(22),
            RegOut(23),
            RegOut(24),
            RegOut(25),
            RegOut(26),
            RegOut(27),
            RegOut(28),
            RegOut(29),
            RegOut(30),
            RegOut(31),
            ReadData1 -- Output
            );



    DUT_READREG2_MUX : entity work.MUX32
        generic map (WORD_WIDTH)
        port map (
            ReadReg2, -- Select bits
            RegOut(0),
            RegOut(1),
            RegOut(2),
            RegOut(3),
            RegOut(4),
            RegOut(5),
            RegOut(6),
            RegOut(7),
            RegOut(8),
            RegOut(9),
            RegOut(10),
            RegOut(11),
            RegOut(12),
            RegOut(13),
            RegOut(14),
            RegOut(15),
            RegOut(16),
            RegOut(17),
            RegOut(18),
            RegOut(19),
            RegOut(20),
            RegOut(21),
            RegOut(22),
            RegOut(23),
            RegOut(24),
            RegOut(25),
            RegOut(26),
            RegOut(27),
            RegOut(28),
            RegOut(29),
            RegOut(30),
            RegOut(31),
            ReadData2 -- Output
            );

    -- Decoder
    DUT_DECODER : entity work.DECODER
        port map (
            WriteReg, -- Select register bits
            DECODER_OUT -- Output a 1-hot vector
            );
end architecture;
-- end architecture

-- end of file

