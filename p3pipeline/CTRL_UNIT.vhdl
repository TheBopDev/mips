-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-18
-- Entity Overview:
--

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity CTRL_UNIT is
    port (
    Pipeline : in  std_logic;
    IF_DE_OP : in  std_logic_vector(5 downto 0);
    INSTR_OP : in  std_logic_vector(5 downto 0);
    RegDst   : out std_logic;
    Jump     : out std_logic;
    Branch   : out std_logic;
    MemRead  : out std_logic;
    MemWrite : out std_logic;
    ALU_OP   : out std_logic_vector(1 downto 0);
    ALUSrc   : out std_logic;
    RegWrite : out std_logic;
    MemToReg : out std_logic
    ) ;
end entity CTRL_UNIT;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of CTRL_UNIT is
    
    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------
    signal WORKING_OPCODE : std_logic_vector(5 downto 0);


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------

    -- Update working opcode
    OP_UPDATE : process(Pipeline, INSTR_OP, IF_DE_OP) is
    begin
        if (Pipeline = '0') then WORKING_OPCODE <= INSTR_OP;
        else WORKING_OPCODE <= IF_DE_OP;
        end if;
    end process;

    control : process(WORKING_OPCODE) is
    begin

        -- Default values
        RegDst   <= '0';
        Jump     <= '0';
        Branch   <= '0';
        MemRead  <= '0';
        MemToReg <= '0';
        MemWrite <= '0';
        ALU_OP   <= "00";
        ALUSrc   <= '0';
        RegWrite <= '0';
        if (WORKING_OPCODE = "000000") then -- R
            RegDst      <= '1';
            ALUSrc      <= '0';
            MemToReg    <= '0';
            RegWrite    <= '1';
            MemRead     <= '0';
            MemWrite    <= '0';
            Branch      <= '0';
            Jump        <= '0';
            ALU_OP      <= "10";
            Jump        <= '0';
        elsif (WORKING_OPCODE = "101011") then -- SW
            RegDst      <= '0';
            ALUSrc      <= '1';
            MemToReg    <= '0';
            RegWrite    <= '0';
            MemRead     <= '0';
            MemWrite    <= '1';
            Branch      <= '0';
            ALU_OP      <= "00";
            Jump        <= '0';
        elsif (WORKING_OPCODE = "100011") then -- LW
            RegDst      <= '0';
            ALUSrc      <= '1';
            MemToReg    <= '1'; -- LW
            RegWrite    <= '1';
            MemRead     <= '1';
            MemWrite    <= '0';
            Branch      <= '0';
            ALU_OP      <= "00";
            Jump        <= '0';
        elsif (WORKING_OPCODE = "001000") then -- ADDI
            RegDst      <= '0';
            ALUSrc      <= '1';
            MemToReg    <= '0';
            RegWrite    <= '1';
            MemRead     <= '0';
            MemWrite    <= '0';
            Branch      <= '0';
            ALU_OP      <= "00";
            Jump        <= '0';
        elsif (WORKING_OPCODE = "000100") then -- BEQ
            RegDst      <= '0';
            ALUSrc      <= '0';
            MemToReg    <= '0';
            RegWrite    <= '0';
            MemRead     <= '0';
            MemWrite    <= '0';
            Branch      <= '1';
            ALU_OP      <= "01";
            Jump        <= '0';
        else                        -- Jump
            RegDst      <= '0';
            ALUSrc      <= '0';
            MemToReg    <= '0';
            RegWrite    <= '0';
            MemRead     <= '0';
            MemWrite    <= '0';
            Branch      <= '0';
            ALU_OP      <= "00";
            Jump        <= '1';
        end if;
    end process;


end architecture;
-- end architecture

-- end of file

