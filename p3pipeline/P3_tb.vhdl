-- Author: Josh White
-- Date created:  2023-04-19
-- Date modified: 2023-04-19
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
    constant WORD_WIDTH : integer := 32;
    constant ADDR_WIDTH : integer :=  5;


    signal CLK : std_logic := '0';
    signal RST : std_logic := '0';
    signal Pipeline : std_logic := '0';
    signal Bonus : std_logic := '0'; -- enabled by default, this doesn't do anything

    signal BranchEnable : std_logic;
    signal PC_out : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MEM_WB_DMEM_out : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MEM_WB_RegWrite_out : std_logic;
    signal ALU_OP : std_logic_vector(3 downto 0);
    signal MEM_WB_MemToReg : std_logic;
    signal INSTR : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_Reg1Data : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_Reg2Data : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_SignedExtend : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal FWD_A : std_logic_vector(1 downto 0);
    signal FWD_B : std_logic_vector(1 downto 0);
    signal WB_Data_out : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_OVF : std_logic;


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------
    DUT_P3TOP : entity work.P3_top
        port map (
            CLK,
            RST,
            Pipeline,
            Bonus,

            BranchEnable,
            PC_out,
            MEM_WB_DMEM_out,
            MEM_WB_RegWrite_out,
            ALU_OP,
            MEM_WB_MemToReg,
            INSTR,
            DE_EX_Reg1Data,
            DE_EX_Reg2Data,
            DE_EX_SignedExtend,
            FWD_A,
            FWD_B,
            WB_Data_out,
            ALU_OVF
        );

    -- Clock
    CLK <= not CLK after 250 ns;





end architecture;
-- end architecture

-- end of file
