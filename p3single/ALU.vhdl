-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-24
-- Entity Overview:
--      This is the generic ALU entity for the MIPS processor.
--      It is 32 bits wide and has 4 control bits.
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
    );
    port (
        ALU_CONTROL : in  std_logic_vector(3  downto 0);
        ALU_IN0     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
        ALU_IN1     : in  std_logic_vector(WORD_WIDTH-1 downto 0);
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
    signal ALU_RESULT : std_logic_vector(WORD_WIDTH downto 0) := (others => '0');


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------


-- ALU process to update result
ALUProcess : process(ALU_IN0, ALU_IN1, ALU_CONTROL) is
begin
    case ALU_CONTROL is
        when "0000" => ALU_RESULT(WORD_WIDTH-1 downto 0) <= ALU_IN0 AND ALU_IN1; -- AND
        when "0001" => ALU_RESULT(WORD_WIDTH-1 downto 0) <= ALU_IN0 OR  ALU_IN1; -- OR
        when "0010" => ALU_RESULT <= -- ADD
                    std_logic_vector(to_unsigned(to_integer(unsigned(ALU_IN0)) +
                    to_integer(unsigned(ALU_IN1)), WORD_WIDTH+1));
        when "0110" => ALU_RESULT <= -- SUB
                    std_logic_vector(to_unsigned(to_integer(unsigned(ALU_IN0)) -
                    to_integer(unsigned(ALU_IN1)), WORD_WIDTH+1));
        --when "0111" => ALU_RESULT <= -- SLT...
        when "1100" => ALU_RESULT(WORD_WIDTH-1 downto 0) <= ALU_IN0 NOR ALU_IN1; -- NOR
        when "1111" => ALU_RESULT(WORD_WIDTH-1 downto 0) <= ALU_IN0 XOR ALU_IN1; -- XOR
        when others => null;
            ALU_RESULT <= (others => '0');
    end case;
end process;
-- Process end


    -- Assign the zero flag
UpdateOuts : process (ALU_RESULT) is
begin
    ALU_OUT <= ALU_RESULT(WORD_WIDTH-1 downto 0);
    if unsigned(ALU_RESULT) = 0 then ALU_ZFLG <= '1';
    else ALU_ZFLG <= '0';
    end if;
    -- Update overflow
    if ALU_RESULT(WORD_WIDTH) = '1' then ALU_OVF <= '1';
    else ALU_OVF <= '0';
    end if;
end process;



end architecture;
-- end architecture

-- end of file

