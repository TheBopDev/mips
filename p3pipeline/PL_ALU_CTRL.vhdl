-- Author: Josh White
-- Date created:  2023-04-23
-- Date modified: 2023-04-23
-- Entity Overview:
-- Pipelined ALU Control unit

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity PL_ALU_CTRL is
    generic (
    WORD_WIDTH : integer := 32
    ) ;

    port (
    Pipeline : in  std_logic;
    NP_ALU_OP : in  std_logic_vector(1 downto 0);
    NP_INSTR_FUNC : in  std_logic_vector(5 downto 0);
    YP_ALU_OP : in  std_logic_vector(1 downto 0);
    YP_INSTR_FUNC : in  std_logic_vector(5 downto 0);
    ALU_CONTROL : out std_logic_vector(3 downto 0)
    ) ;
end entity PL_ALU_CTRL;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of PL_ALU_CTRL is
    
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
exampleProcess : process(Pipeline, NP_ALU_OP, NP_INSTR_FUNC,
        YP_ALU_OP, YP_INSTR_FUNC) is
begin
    if (Pipeline = '0') then
        if (NP_ALU_OP = "00") then ALU_CONTROL <= "0010"; -- ADD
        elsif (NP_ALU_OP = "01") then ALU_CONTROL <= "0110"; -- SUB
        elsif (NP_ALU_OP = "10") then -- R type
            if    (NP_INSTR_FUNC = "100000") then ALU_CONTROL <= "0010"; -- ADD
            elsif (NP_INSTR_FUNC = "100010") then ALU_CONTROL <= "0110"; -- SUB
            elsif (NP_INSTR_FUNC = "100100") then ALU_CONTROL <= "0000"; -- AND
            elsif (NP_INSTR_FUNC = "100101") then ALU_CONTROL <= "0001"; -- OR
            elsif (NP_INSTR_FUNC = "100010") then ALU_CONTROL <= "0111"; -- SLT
            end if;
        end if;
    else -- Pipelien = '1'
        if (YP_ALU_OP = "00") then ALU_CONTROL <= "0010"; -- ADD
        elsif (YP_ALU_OP = "01") then ALU_CONTROL <= "0110"; -- SUB
        elsif (YP_ALU_OP = "10") then -- R type
            if   (YP_INSTR_FUNC = "100000") then ALU_CONTROL <= "0010"; -- ADD
            elsif (YP_INSTR_FUNC = "100010") then ALU_CONTROL <= "0110"; -- SUB
            elsif (YP_INSTR_FUNC = "100100") then ALU_CONTROL <= "0000"; -- AND
            elsif (YP_INSTR_FUNC = "100101") then ALU_CONTROL <= "0001"; -- OR
            elsif (YP_INSTR_FUNC = "100010") then ALU_CONTROL <= "0111"; -- SLT
            end if;
        end if;
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

