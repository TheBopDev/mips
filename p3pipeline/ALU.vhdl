-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-22
-- Entity Overview:
--      This is the generic ALU entity for the MIPS processor.
--      It is generic one word wide and has 4 control bits.
--      Supported functions: AND, OR, ADD, SUB, XOR, NOR, SLT


-- To do: Implement the overflow detection. This could be done by
-- changing ALU_RESULT size to 33 bits and checking to see if the sign changes.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity ALU is
    generic (
        WORD_WIDTH : integer := 32
        ) ;
    port (
        ALU_IN1     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
        ALU_IN2     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
        ALU_CONTROL : in  std_logic_vector(3  downto 0);
        ALU_OUT     : out std_logic_vector(WORD_WIDTH-1 downto 0);
        ALU_ZFLG    : out std_logic;
        ALU_OVF     : out std_logic
    ) ;
end entity ALU;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of ALU is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------
    -- Create temporary signal and initialize it to zero
    signal ALU_RESULT : std_logic_vector(WORD_WIDTH downto 0) := x"00000000" & '0';


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------


-- ALU process to update result
ALUProcess : process(ALU_IN1, ALU_IN2, ALU_CONTROL) is
begin
    case ALU_CONTROL is
        when "0000" => ALU_RESULT <= '0' & ALU_IN1 AND ALU_IN2; -- AND
        when "0001" => ALU_RESULT <= '0' & ALU_IN1 OR  ALU_IN2; -- OR
        when "0010" => ALU_RESULT <= -- ADD
                    std_logic_vector(to_unsigned(to_integer(unsigned(ALU_IN1))
                    + to_integer(unsigned(ALU_IN2)), WORD_WIDTH+1));
        when "0110" => ALU_RESULT <= -- SUB
                    std_logic_vector(to_unsigned(to_integer(unsigned(ALU_IN1))
                    - to_integer(unsigned(ALU_IN2)), WORD_WIDTH+1));
        when "0111" => ALU_RESULT <= '0' & x"DEADBEEF"; -- SLT...
        when "1100" => ALU_RESULT <= '0' & ALU_IN1 NOR ALU_IN2; -- NOR
        when "1111" => ALU_RESULT <= '0' & ALU_IN1 XOR ALU_IN2; -- XOR
        when others => ALU_RESULT <= (others => '0');
    end case;
end process;
-- Process end


-- Update the output values depending on the temporary ALU_RESULT signal
ALUOUT : process(ALU_RESULT) is
begin
    -- Assign the output
    ALU_OUT <= ALU_RESULT(WORD_WIDTH-1 downto 0);
    -- Check for overflow
    if ALU_RESULT(WORD_WIDTH) = '1' then ALU_OVF <= '1';
    else ALU_OVF <= '0';
    end if;

    -- Assign the zero flag
    if ALU_RESULT(WORD_WIDTH-1 downto 0) = x"00000000" then ALU_ZFLG <= '1';
    else ALU_ZFLG <= '0';
    end if;
end process;


end architecture;
-- end architecture

-- end of file

