-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-18
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
entity ALU_CTRL is
    port (
        INSTR_OP : in std_logic_vector(1 downto 0);
        INSTR_FUNC : in std_logic_vector(5 downto 0);
        ALU_CTRL_OUT : out std_logic_vector(3 downto 0)
    ) ;
end entity ALU_CTRL;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of ALU_CTRL is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------

begin -- architecture


-- Process begin
update_ALU_CTRL_OUT : process (INSTR_OP, INSTR_FUNC) is
begin
    if (INSTR_OP = "00") then ALU_CTRL_OUT <= "0010";               -- Add
    elsif (INSTR_OP = "01") then ALU_CTRL_OUT <= "0110";            -- Sub
    elsif (INSTR_OP = "10") then -- R-type
        if    (INSTR_FUNC = "100000") then ALU_CTRL_OUT <= "0010";  -- Add
        elsif (INSTR_FUNC = "100010") then ALU_CTRL_OUT <= "0110";  -- Sub
        elsif (INSTR_FUNC = "100010") then ALU_CTRL_OUT <= "0000";  -- AND
        elsif (INSTR_FUNC = "100010") then ALU_CTRL_OUT <= "0001";  -- OR
        elsif (INSTR_FUNC = "100010") then ALU_CTRL_OUT <= "0111";  -- SLT
        end if;
    end if;

end process;




end architecture;
-- end architecture

-- end of file

