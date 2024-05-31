-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-22
-- Entity Overview:
-- This file is the 32-to-1 mux, with generic word width

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity MUX32 is
    generic (
    WORD_WIDTH : integer := 32
    ) ;

    port (
    Sel     : in  std_logic_vector(4 downto 0);
    IN1     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN2     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN3     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN4     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN5     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN6     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN7     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN8     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN9     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN10    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN11    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN12    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN13    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN14    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN15    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN16    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN17    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN18    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN19    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN20    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN21    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN22    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN23    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN24    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN25    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN26    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN27    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN28    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN29    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN30    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN31    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    IN32    : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    MUX_OUT : out std_logic_vector(WORD_WIDTH-1 downto 0)
    ) ;
end entity MUX32;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of MUX32 is
    
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
MUX_PROC : process(Sel, IN1, IN2, IN3, IN4, IN5,IN6, IN7, IN8, IN9,
    IN10, IN11, IN12, IN13, IN14, IN15, IN16, IN17, IN18, IN19,
    IN20, IN21, IN22, IN23, IN24, IN25, IN26, IN27, IN28, IN29,
    IN30, IN31, IN32) is
begin
    case Sel is
        when "00000" => MUX_OUT <=  IN1;
        when "00001" => MUX_OUT <=  IN2;
        when "00010" => MUX_OUT <=  IN3;
        when "00011" => MUX_OUT <=  IN4;
        when "00100" => MUX_OUT <=  IN5;
        when "00101" => MUX_OUT <=  IN6;
        when "00110" => MUX_OUT <=  IN7;
        when "00111" => MUX_OUT <=  IN8;
        when "01000" => MUX_OUT <=  IN9;
        when "01001" => MUX_OUT <= IN10;
        when "01010" => MUX_OUT <= IN11;
        when "01011" => MUX_OUT <= IN12;
        when "01100" => MUX_OUT <= IN13;
        when "01101" => MUX_OUT <= IN14;
        when "01110" => MUX_OUT <= IN15;
        when "01111" => MUX_OUT <= IN16;
        when "10000" => MUX_OUT <= IN17;
        when "10001" => MUX_OUT <= IN18;
        when "10010" => MUX_OUT <= IN19;
        when "10011" => MUX_OUT <= IN20;
        when "10100" => MUX_OUT <= IN21;
        when "10101" => MUX_OUT <= IN22;
        when "10110" => MUX_OUT <= IN23;
        when "10111" => MUX_OUT <= IN24;
        when "11000" => MUX_OUT <= IN25;
        when "11001" => MUX_OUT <= IN26;
        when "11010" => MUX_OUT <= IN27;
        when "11011" => MUX_OUT <= IN28;
        when "11100" => MUX_OUT <= IN29;
        when "11101" => MUX_OUT <= IN30;
        when "11110" => MUX_OUT <= IN31;
        when "11111" => MUX_OUT <= IN32;
        when others   => MUX_OUT <= x"DEADBEEF"; -- Deadbeef used to indicate error
    end case;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

