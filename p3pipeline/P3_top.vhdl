-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-22
-- Entity Overview:
--      This is the top level entity for Phase 3 (Pipelined)
--      I implemented structural behavior. Reference the readme to get more info
--      about a file if desired.


--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity P3_top is
    port (
    CLK : in std_logic; -- clock
    RST : in std_logic; -- Asynchronous reset
    Pipeline : in std_logic;     -- 1 for yes, 0 for no
    BonusEnable : in std_logic := '1';  -- 1 for yes, 0 for no


    -- Put more pins to produce logic
    branchEnableOutput : out std_logic; 
    PC_output : out std_logic_vector(31 downto 0);
    MEM_WB_DMEM_Output : out std_logic_vector(31 downto 0);
    MEM_WB_RegWrite_Output : out std_logic;
    ALU_OperationOutput : out std_logic_vector(3 downto 0);
    MEM_WB_MemToReg_Output : out std_logic;
    INSTR_Output : out std_logic_vector(31 downto 0);
    DE_EX_Reg1Data_Output : out std_logic_vector(31 downto 0);
    DE_EX_Reg2Data_Output : out std_logic_vector(31 downto 0);
    DE_EX_SEX_Output : out std_logic_vector(31 downto 0);
    FWD_A_Output : out std_logic_vector(1 downto 0);
    FWD_B_Output : out std_logic_vector(1 downto 0);
    WritebackDataOutput : out std_logic_vector(31 downto 0); -- Writeback data
    ALU_OVERFLOW : out std_logic -- ALU overflow flag
    ) ;
end entity P3_top;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture structural of P3_top is

    --------------------------------------------------
    -- Type     declarations
    -- Constant declarations
    -- Signal   declarations
    --------------------------------------------------
    constant WORD_WIDTH : integer := 32;    -- 32 bits wide
    constant ADDR_WIDTH : integer := 5;     -- 5 bits wide


    --------------------------------------------------
    -- CHANGES TO MAKE IT RUN IN A PIPELINE
    --------------------------------------------------
    -- Need pipeline registers
    -- Find the number of bits each register needs
    -- create the generic integer for the width

    -- Other bonus signals
    signal PC_Write : std_logic; -- PC write enable


    -- Control/enable

    signal IF_DE_Write : std_logic; -- IF/DE write enable (for stalling)
    -- Data
    signal IF_DE_PC_IN      : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal IF_DE_PC_OUT     : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal IF_DE_INSTR_IN   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal IF_DE_INSTR_OUT  : std_logic_vector(WORD_WIDTH-1 downto 0);
    
    signal IF_DE_RS_IN      : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal IF_DE_RS_OUT     : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal IF_DE_RT_IN      : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal IF_DE_RT_OUT     : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal IF_DE_RD_IN      : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal IF_DE_RD_OUT     : std_logic_vector(ADDR_WIDTH-1 downto 0);

    signal IF_DE_FUNC_OUT   : std_logic_vector(5 downto 0);
    signal IF_DE_ALUOp_OUT  : std_logic_vector(1 downto 0);
    signal IF_DE_SHAMT_OUT  : std_logic_vector(4 downto 0);
    signal IF_DE_OPCODE_OUT : std_logic_vector(5 downto 0);
    signal IF_DE_SEX_LOWER  : std_logic_vector((WORD_WIDTH/2)-1 downto 0);






    -- Decode Execute Pipeline Register
    -- Control signals
    signal DE_EX_RegDst_IN          : std_logic;
    signal DE_EX_RegDst_OUT         : std_logic;
    signal DE_EX_RegWrite_IN        : std_logic;
    signal DE_EX_RegWrite_OUT       : std_logic;
    signal DE_EX_MemRead_IN         : std_logic;
    signal DE_EX_MemRead_OUT        : std_logic;
    signal DE_EX_MemToReg_IN        : std_logic;
    signal DE_EX_MemToReg_OUT       : std_logic;
    signal DE_EX_MemWrite_IN        : std_logic;
    signal DE_EX_MemWrite_OUT       : std_logic;
    signal DE_EX_Branch_IN          : std_logic;
    signal DE_EX_Branch_OUT         : std_logic;
    signal DE_EX_MemWriteRead_IN    : std_logic;
    signal DE_EX_MemWriteRead_OUT   : std_logic;
    signal DE_EX_ALUOp_IN           : std_logic_vector(1  downto 0);
    signal DE_EX_ALUOp_OUT          : std_logic_vector(1  downto 0);
    signal DE_EX_ALUSrc_IN          : std_logic;
    signal DE_EX_ALUSrc_OUT         : std_logic;
    signal DE_EX_PC_IN              : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_PC_OUT             : std_logic_vector(WORD_WIDTH-1 downto 0);
    -- Data signals
    signal DE_EX_RS_IN              : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal DE_EX_RS_OUT             : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal DE_EX_RT_IN              : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal DE_EX_RT_OUT             : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal DE_EX_RD_IN              : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal DE_EX_RD_OUT             : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal DE_EX_FUNC_IN            : std_logic_vector(5 downto 0);
    signal DE_EX_FUNC_OUT           : std_logic_vector(5 downto 0);
    signal DE_EX_Reg1Data_IN        : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_Reg1Data_OUT       : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_Reg2Data_IN        : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_Reg2Data_OUT       : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_SEX_IN             : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DE_EX_SEX_OUT            : std_logic_vector(WORD_WIDTH-1 downto 0);



    -- Execute Memory Pipeline Register
    signal EX_MEM_RD_IN         : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal EX_MEM_RD_OUT        : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal EX_MEM_PC_IN         : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal EX_MEM_PC_OUT        : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal EX_MEM_ALU_RES_IN    : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal EX_MEM_ALU_RES_OUT   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal EX_MEM_ALU_ZFLG_IN   : std_logic;
    signal EX_MEM_ALU_ZFLG_OUT  : std_logic;
    signal EX_MEM_ALU_OVF_IN    : std_logic;
    signal EX_MEM_ALU_OVF_OUT   : std_logic;
    signal EX_MEM_RegWrite_IN   : std_logic;
    signal EX_MEM_RegWrite_OUT  : std_logic;
    signal EX_MEM_MemToReg_IN   : std_logic;
    signal EX_MEM_MemToReg_OUT  : std_logic;
    signal EX_MEM_Branch_IN     : std_logic;
    signal EX_MEM_Branch_OUT    : std_logic;



    
    signal MEM_WB_PC_IN         : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MEM_WB_PC_OUT        : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MEM_WB_RD_IN         : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal MEM_WB_RD_OUT        : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal MEM_WB_ALU_RES_IN    : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MEM_WB_ALU_RES_OUT   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MEM_WB_DMEM_IN       : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MEM_WB_DMEM_OUT      : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MEM_WB_RegWrite_IN   : std_logic;
    signal MEM_WB_RegWrite_OUT  : std_logic;
    signal MEM_WB_MemToReg_IN   : std_logic;
    signal MEM_WB_MemToReg_OUT  : std_logic;
    signal MEM_WB_WriteReg_IN   : std_logic;
    signal MEM_WB_WriteReg_OUT  : std_logic;






    --------------------------------------------------
    signal PC_IN    : std_logic_vector(WORD_WIDTH-1 downto 0); -- input to PC
    signal PC_OUT   : std_logic_vector(WORD_WIDTH-1 downto 0); -- output from PC


    -- IMEM signals
    signal IMEM_ADDR    : std_logic_vector(7  downto 0);
    -- clock = CLK
    signal IMEM_DATA    : std_logic_vector(WORD_WIDTH-1 downto 0); -- input data
    signal IMEM_WREN    : std_logic; -- write enable
    signal INSTR        : std_logic_vector(WORD_WIDTH-1 downto 0); -- "q" output
    -- Remapping signals to make it easier to read
    signal INSTR_FUNC   : std_logic_vector(5  downto 0);



    -- Control unit signals
    signal INSTR_OP : std_logic_vector(5  downto 0);
    signal RegDst   : std_logic;
    signal Jump     : std_logic;
    signal Branch   : std_logic;
    signal MemRead  : std_logic;
    signal MemToReg : std_logic;
    signal CTRL_ALU_OP   : std_logic_vector(1  downto 0);
    signal MemWrite : std_logic;
    signal ALUSrc   : std_logic;
    signal RegWrite : std_logic;


    -- ALU signals
    -- ALU is one word wide (32 bits)
    signal ALU_IN0      : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN1      : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_OUT      : std_logic_vector(WORD_WIDTH-1 downto 0); -- result
    signal ALU_CONTROL  : std_logic_vector(3  downto 0); -- control
    signal ALU_ZFLG     : std_logic; -- zero flag
    signal ALU_OVF      : std_logic; -- overflow


    -- Registers signals
    signal ReadReg1     : std_logic_vector(ADDR_WIDTH-1  downto 0);
    signal ReadReg2     : std_logic_vector(ADDR_WIDTH-1  downto 0);
    signal WriteReg     : std_logic_vector(ADDR_WIDTH-1  downto 0);
    signal WriteData    : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal Reg1Data     : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal Reg2Data     : std_logic_vector(WORD_WIDTH-1 downto 0);


    -- Signed Extension signals
    signal SEX_IN           : std_logic_vector((WORD_WIDTH/2)-1 downto 0);
    signal SEX_OUT          : std_logic_vector( WORD_WIDTH-1 downto 0);
    signal NP_IMM_SEX_IN    : std_logic_vector((WORD_WIDTH/2)-1 downto 0);
    signal YP_IMM_SEX_IN    : std_logic_vector((WORD_WIDTH/2)-1 downto 0);


    -- ALU_IN0_MUX signals
    signal ALU_IN0_SEL      : std_logic_vector(1 downto 0);
    signal ALU_IN0_MUX_IN0  : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN0_MUX_IN1  : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN0_MUX_IN2  : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN0_MUX_OUT  : std_logic_vector(WORD_WIDTH-1 downto 0);


    -- ALU_IN1_MUX signals
    -- select bit is ALUSrc from control unit
    signal ALU_IN1_MUX_IN0  : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN1_MUX_IN1  : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN1_MUX_OUT  : std_logic_vector(WORD_WIDTH-1 downto 0);

    -- Writeback MUX signals
    -- select bit is MemToReg from control unit
    signal YP_WB_MUX_SEL    : std_logic; -- YP = Yes pipeline
    signal YP_WB_MUX_IN0    : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal YP_WB_MUX_IN1    : std_logic_vector(WORD_WIDTH-1 downto 0);

    signal NP_WB_MUX_SEL_IN : std_logic;
    signal NP_WB_MUX_IN0_IN : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal NP_WB_MUX_IN1_IN : std_logic_vector(WORD_WIDTH-1 downto 0);



    -- PC Add select MUX signals
    signal MUX_BRANCH_SEL   : std_logic;
    signal MUX_BRANCH_IN0   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MUX_BRANCH_IN1   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MUX_BRANCH_OUT   : std_logic_vector(WORD_WIDTH-1 downto 0);

    -- Jump MUX
    signal MUX_JUMP_SEL     : std_logic;
    signal MUX_JUMP_IN0     : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MUX_JUMP_IN1     : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal MUX_JUMP_OUT     : std_logic_vector(WORD_WIDTH-1 downto 0);


    -- Write Register Select MUX
    constant WRITE_REG_MUX_WIDTH : integer := 5; -- 5 bits wide
    signal MUX_WRITE_REG_SEL : std_logic; -- RegDst
    signal MUX_WRITE_REG_IN0 : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal MUX_WRITE_REG_IN1 : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal MUX_WRITE_REG_OUT : std_logic_vector(ADDR_WIDTH-1 downto 0);
    -- I think this goes here?
    signal MUX_RegDst_OUT    : std_logic_vector(ADDR_WIDTH-1 downto 0);


    -- PC Add4 signals
    signal PC_ADD4_IN       : std_logic_vector(WORD_WIDTH-1 downto 0); -- PC
    -- Constant 4 to add to PC.
    signal CONST4           : std_logic_vector(WORD_WIDTH-1 downto 0) := x"00000004";
    signal PC_ADD4_OUT      : std_logic_vector(WORD_WIDTH-1 downto 0);


    signal PC_BRANCH_ADDR   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal PC_JUMP_ADDR     : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal JUMP_SL2_IN      : std_logic_vector(25 downto 0); -- Immediate (instr 25:0)
    signal JUMP_SL2_OUT     : std_logic_vector(27 downto 0);

    ----------------------------------------------------------------------------
    -- DATA MEMORY
    ----------------------------------------------------------------------------
    -- DMEM signals
    signal DMEM_ADDR        : std_logic_vector(31 downto 0);
    signal DMEM_DATA_OUT    : std_logic_vector(WORD_WIDTH-1 downto 0);



    -- Find where to put these
    signal HAZ_FWD_A        : std_logic_vector(1 downto 0);
    signal HAZ_FWD_B        : std_logic_vector(1 downto 0);
    signal IFDE_ReadData1   : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal toWriteData      : std_logic_vector(WORD_WIDTH-1 downto 0);

    signal SEX_OUT_SHIFTED : std_logic_vector(WORD_WIDTH-1 downto 0);


    ----------------------------------------------------------------------------
    -- STALL
    ----------------------------------------------------------------------------
    signal STALL_stall : std_logic;
    signal STALL_RegDst_IN : std_logic;
    signal STALL_Branch_IN : std_logic;
    signal STALL_MemRead_IN : std_logic;
    signal STALL_MemWrite_IN : std_logic;
    signal STALL_MemToReg_IN : std_logic;
    signal STALL_ALUOp_IN : std_logic_vector(1 downto 0);
    signal STALL_ALUSrc_IN : std_logic;
    signal STALL_RegWrite_IN : std_logic;
    signal STALL_Jump_IN : std_logic;
    signal STALL_RegDst_OUT : std_logic;
    signal STALL_Branch_OUT : std_logic;
    signal STALL_MemRead_OUT : std_logic;
    signal STALL_MemWrite_OUT : std_logic;
    signal STALL_MemToReg_OUT : std_logic;
    signal STALL_ALUOp_OUT : std_logic_vector(1 downto 0);
    signal STALL_ALUSrc_OUT : std_logic;
    signal STALL_RegWrite_OUT : std_logic;
    signal STALL_Jump_OUT : std_logic;




begin -- architecture

    -- Begin by linking the inputs of each component to the outputs
    -- of the previous component.
    
    -- PC input
    PC_IN <= MUX_JUMP_OUT;


    -- PC Add 4 input
    PC_ADD4_IN <= PC_OUT;
    -- Note that the other input is a constant 4 in std_logic_vector format.

    -- Instruction Memory (IMEM)
    IMEM_ADDR <= PC_OUT(7 downto 0);


    -- Signal assignments to make mapping and reading easier to understand
    INSTR_OP <= INSTR(31 downto 26);
    INSTR_FUNC <= INSTR(5 downto 0);


    -- Pipeline stuff
    IF_DE_RS_OUT <= IF_DE_INSTR_OUT(25 downto 21);

    IF_DE_INSTR_IN <= INSTR;
    IF_DE_PC_IN <= PC_ADD4_OUT;



    -- Linking inputs to the ALU
    -- Link RegData1 to ALU input 1
    ALU_IN0 <= ALU_IN0_MUX_OUT; -- single cycle
    -- Then link signed extension output to its MUX.
    ALU_IN1_MUX_IN0 <= Reg2Data;
    ALU_IN1_MUX_IN1 <= SEX_OUT;
    -- Linking ALU_IN1 to the output of the ALU_IN1_MUX
    ALU_IN1 <= ALU_IN1_MUX_OUT;


    -- Linking the RegWrite Select MUX
--    MUX_WRITE_REG_SEL <= RegDst;
--    MUX_WRITE_REG_IN0 <= INSTR(20 downto 16);
--    MUX_WRITE_REG_IN1 <= INSTR(15 downto 11);
    

    -- Linking inputs to the Registers block
    ReadReg1 <= INSTR(25 downto 21);
    ReadReg2 <= INSTR(20 downto 16);




    SEX_OUT_SHIFTED <= SEX_OUT(WORD_WIDTH-1 downto 2) & "00";


    -- Link Jump MUX
    MUX_JUMP_SEL <= Jump;
    MUX_JUMP_IN0 <= MUX_BRANCH_OUT;
    MUX_JUMP_IN1 <= PC_JUMP_ADDR;


    -- Link JUMP_SL2_IN to the instruction bits
    JUMP_SL2_IN <= INSTR(25 downto 0);
    -- Concatenate the Jump Address signal
    PC_JUMP_ADDR <= PC_ADD4_OUT(31 downto 28) & JUMP_SL2_OUT;



    -- Signal assignments to produce logic in the top level entity (I hope)

    -- Put more pins to produce logic
    PC_output <= PC_OUT;
    MEM_WB_DMEM_Output <= x"DEADBEEF";
    MEM_WB_RegWrite_Output <= MEM_WB_RegWrite_OUT;
    ALU_OperationOutput <= ALU_CONTROL;
    MEM_WB_MemToReg_Output <= MEM_WB_MemToReg_OUT;
    INSTR_Output <= INSTR;
    DE_EX_Reg1Data_Output <= DE_EX_Reg1Data_OUT;
    DE_EX_Reg2Data_Output <= DE_EX_Reg2Data_OUT;
    DE_EX_SEX_Output <= DE_EX_SEX_OUT;
    FWD_A_Output <= HAZ_FWD_A;
    FWD_B_Output <= HAZ_FWD_B;

    


    WritebackDataOutput <= WriteData;
    ALU_OVERFLOW <= ALU_OVF;


    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------
--    DUT_EX : entity work.DUT_EX
--        generic map (n)
--        port map (A, B, C);


    --------------------------------------------------
    -- Add the following components to make it
    -- pipelined.
    --------------------------------------------------

    -- IF_DE_Write <= STALL_Stall;

    -- Instruction Fetch / Decode Register
    DUT_IF_DE_REG : entity work.IFDE_REG
        port map (
            CLK,
            Pipeline,
            IF_DE_Write,
            IF_DE_PC_IN,
            IF_DE_INSTR_IN,
            IF_DE_PC_OUT,
            IF_DE_INSTR_OUT);


    IF_DE_OPCODE_OUT    <= IF_DE_INSTR_OUT(31 downto 26);
    IF_DE_ALUOp_OUT     <= IF_DE_INSTR_OUT(31 downto 30);
    IF_DE_RS_OUT        <= IF_DE_INSTR_OUT(25 downto 21);
    IF_DE_RT_OUT        <= IF_DE_INSTR_OUT(20 downto 16);
    IF_DE_RD_OUT        <= IF_DE_INSTR_OUT(15 downto 11);
    IF_DE_SHAMT_OUT     <= IF_DE_INSTR_OUT(10 downto 6);
    IF_DE_FUNC_OUT      <= IF_DE_INSTR_OUT(5 downto 0);
    IF_DE_SEX_LOWER     <= IF_DE_INSTR_OUT((WORD_WIDTH/2)-1 downto 0);



    -- Handle input linking.
    DE_EX_Branch_IN <= STALL_Branch_OUT;
    DE_EX_ALUSrc_IN <= STALL_ALUSrc_OUT;
    DE_EX_ALUOp_IN <= STALL_ALUOp_OUT;
    DE_EX_SEX_IN <= SEX_OUT;
    DE_EX_Reg1Data_IN <= Reg1Data;
    DE_EX_Reg2Data_IN <= Reg2Data;
    DE_EX_PC_IN <= IF_DE_PC_OUT;
    DE_EX_RegWrite_IN <= STALL_RegWrite_OUT;
    DE_EX_MemToReg_IN <= STALL_MemToReg_OUT;
    DE_EX_MemRead_IN <= STALL_MemRead_OUT;
    DE_EX_RS_IN <= IF_DE_RS_OUT;
    DE_EX_RT_IN <= IF_DE_RT_OUT;
    DE_EX_RD_IN <= IF_DE_RD_OUT;
    DE_EX_MemWrite_IN <= STALL_MemWrite_OUT;
    DE_EX_FUNC_IN <= IF_DE_FUNC_OUT;
    DE_EX_MemWriteRead_IN <= STALL_MemWrite_OUT;
    DE_EX_RegDst_IN <= STALL_RegDst_OUT;



    -- Decode / Execute Reigster
    DUT_DE_EX_REG : entity work.DEEX_REG
        port map (
            CLK,
            DE_EX_RegDst_IN,
            DE_EX_RegDst_OUT,
            DE_EX_RegWrite_IN,
            DE_EX_RegWrite_OUT,
            DE_EX_MemRead_IN,
            DE_EX_MemRead_OUT,
            DE_EX_MemToReg_IN,
            DE_EX_MemToReg_OUT,
            DE_EX_MemWrite_IN,
            DE_EX_MemWrite_OUT,
            DE_EX_Branch_IN,
            DE_EX_Branch_OUT,
            DE_EX_MemWriteRead_IN,
            DE_EX_MemWriteRead_OUT,
            DE_EX_ALUOp_IN,
            DE_EX_ALUOp_OUT,
            DE_EX_ALUSrc_IN,
            DE_EX_ALUSrc_OUT,
            DE_EX_PC_IN,
            DE_EX_PC_OUT,
            DE_EX_RS_IN,
            DE_EX_RS_OUT,
            DE_EX_RT_IN,
            DE_EX_RT_OUT,
            DE_EX_RD_IN,
            DE_EX_RD_OUT,
            DE_EX_FUNC_IN,
            DE_EX_FUNC_OUT,
            DE_EX_Reg1Data_IN,
            DE_EX_Reg1Data_OUT,
            DE_EX_Reg2Data_IN,
            DE_EX_Reg2Data_OUT,
            DE_EX_SEX_IN,
            DE_EX_SEX_OUT);



    -- Linking Execute / Memory
    EX_MEM_RD_IN <= DE_EX_RD_OUT;
    EX_MEM_PC_IN <= DE_EX_PC_OUT;
    EX_MEM_ALU_RES_IN <= ALU_OUT;
    EX_MEM_ALU_ZFLG_IN <= ALU_ZFLG;
    EX_MEM_ALU_OVF_IN <= ALU_OVF;
    EX_MEM_RegWrite_IN <= DE_EX_RegWrite_OUT;
    EX_MEM_MemToReg_IN <= DE_EX_MemToReg_OUT;
    EX_MEM_Branch_IN <= DE_EX_Branch_OUT;

    -- Execute / Memory Register
    DUT_EX_MEM_REG : entity work.EXMEM_REG
        generic map (WORD_WIDTH)
        port map (
            CLK,
            EX_MEM_Branch_IN,
            EX_MEM_RD_IN,
            EX_MEM_PC_IN,
            EX_MEM_ALU_RES_IN,
            EX_MEM_ALU_ZFLG_IN,
            EX_MEM_ALU_OVF_IN,
            EX_MEM_RegWrite_IN,
            EX_MEM_MemToReg_IN,
            EX_MEM_Branch_OUT,
            EX_MEM_RD_OUT,
            EX_MEM_PC_OUT,
            EX_MEM_ALU_RES_OUT,
            EX_MEM_ALU_ZFLG_OUT,
            EX_MEM_ALU_OVF_OUT,
            EX_MEM_RegWrite_OUT,
            EX_MEM_MemToReg_OUT);



    -- Linking Memory / Writeback
    MEM_WB_PC_IN <= EX_MEM_PC_OUT;
    MEM_WB_RD_IN <= EX_MEM_RD_OUT;
    MEM_WB_ALU_RES_IN <= EX_MEM_ALU_RES_OUT;
    MEM_WB_RegWrite_IN <= EX_MEM_RegWrite_OUT; -- Control signal
    MEM_WB_DMEM_IN <= DMEM_DATA_OUT;
    MEM_WB_MemToReg_IN <= EX_MEM_MemToReg_OUT;

    -- Memory / Writeback Register
    DUT_MEM_WB_REG : entity work.MEMWB_REG
        port map (
            CLK,
            MEM_WB_PC_IN,
            MEM_WB_RD_IN,
            MEM_WB_ALU_RES_IN,
            MEM_WB_DMEM_IN,
            MEM_WB_RegWrite_IN,
            MEM_WB_MemToReg_IN,
            MEM_WB_WriteReg_IN,
            MEM_WB_PC_OUT,
            MEM_WB_RD_OUT,
            MEM_WB_ALU_RES_OUT,
            MEM_WB_DMEM_OUT,
            MEM_WB_RegWrite_OUT,
            MEM_WB_MemToReg_OUT,
            MEM_WB_WriteReg_OUT);





    --------------------------------------------------
    -- Cycle independent components (single cycle or pipeline)

    -- Instruction Memory
    DUT_IMEM : entity work.IMEM
        port map (
            IMEM_ADDR,
            CLK,
            IMEM_DATA,
            IMEM_WREN,
            INSTR);


    WriteReg <= MUX_RegDst_OUT;

    DUT_REG: entity work.REGISTERS
        generic map (
            WORD_WIDTH,
            ADDR_WIDTH)
        port map (
            CLK,
            ReadReg1,
            ReadReg2,
            WriteReg,
            WriteData,
            RegWrite,
            Reg1Data,
            Reg2Data);



    -- Control Unit component
    DUT_CTRL_UNIT : entity work.CTRL_UNIT
        port map (
            Pipeline,
            IF_DE_OPCODE_OUT,
            INSTR_OP,
            RegDst, -- Register Destination
            Jump,
            Branch,
            MemRead,
            MemWrite,
            CTRL_ALU_OP,
            ALUSrc,
            RegWrite,
            MemToReg);


    -- ALU control
    DUT_ALU_CONTROL : entity work.PL_ALU_CTRL
        port map (
            Pipeline,
            CTRL_ALU_OP, -- Non Pipeline ALU_OP
            INSTR_FUNC,  -- Non Pipeline INSTR_FUNC
            DE_EX_ALUOp_OUT, -- Pipelined ALU_OP
            DE_EX_FUNC_OUT, -- Pipelined INSTR_FUNC
            ALU_CONTROL);  -- ALU control output

    -- ALU related components
--    DUT_ALU_CTRL : entity work.ALU_CTRL
--        port map (
--            ALU_OP,
--            INSTR_FUNC,
--            ALU_CONTROL);

    DUT_ALU : entity work.ALU
        port map (
            ALU_IN0,
            ALU_IN1,
            ALU_CONTROL,
            ALU_OUT,
            ALU_ZFLG,
            ALU_OVF);

    DUT_ALU_IN0_MUX : entity work.MUX3
        generic map (WORD_WIDTH)
        port map (
            Pipeline,
            HAZ_FWD_A,          -- Select: hazard unit's forward A output
            Reg1Data,
            DE_EX_Reg1Data_OUT,
            WriteData,
            EX_MEM_ALU_RES_OUT,
            ALU_IN0_MUX_OUT);


    DUT_ALU_IN1_MUX : entity work.MUX2
        generic map (WORD_WIDTH)
        port map (
            ALUSrc,             -- From control unit
            ALU_IN1_MUX_IN0,    -- Reg2Data
            ALU_IN1_MUX_IN1,    -- Sign extension out
            ALU_IN1_MUX_OUT);   -- ALU Input 2



    IF_DE_SEX_LOWER <= IF_DE_INSTR_OUT((WORD_WIDTH/2)-1 downto 0); -- 16 bits
    -- NP = No Pipeline. Take the immediate from the instruction
    NP_IMM_SEX_IN <= INSTR((WORD_WIDTH/2)-1 downto 0); -- 16 bits
    -- YP = yes pipeline. Take DE_EX's sign extension output
    YP_IMM_SEX_IN <= IF_DE_SEX_LOWER; -- 16 bits

    -- Signed Extension component
    DUT_SEX : entity work.SEX
        generic map(WORD_WIDTH)
        port map (
            Pipeline,
            NP_IMM_SEX_IN,     -- 16 bits
            YP_IMM_SEX_IN,     -- 16 bits
            SEX_OUT);   -- 32 bits


        NP_WB_MUX_SEL_IN <= MemToReg; -- Select bit for no pipeline
        NP_WB_MUX_IN0_IN <= ALU_OUT; -- In0 for no pipeline
        NP_WB_MUX_IN1_IN <= DMEM_DATA_OUT; -- IN1 for no pipeline
        YP_WB_MUX_SEL <= MEM_WB_MemToReg_OUT;
        YP_WB_MUX_IN0 <= MEM_WB_ALU_RES_OUT;
        YP_WB_MUX_IN1 <= MEM_WB_DMEM_OUT;
        

    -- MUX for writeback selection
    DUT_WB_MUX : entity work.PL_WB_MUX
        generic map (WORD_WIDTH)
        port map (
            Pipeline,
            NP_WB_MUX_SEL_IN,
            NP_WB_MUX_IN0_IN,
            NP_WB_MUX_IN1_IN,
            YP_WB_MUX_SEL,     -- MemToReg (Control unit)
            YP_WB_MUX_IN0,     -- ALU output
            YP_WB_MUX_IN1,     -- Data Memory output
            WriteData);    -- Input to Registers

    -- Handle branch input
    DUT_BRANCH_ADDER: entity work.BRANCH_ADDER
        generic map (WORD_WIDTH)
        port map (
            PC_ADD4_OUT,
            SEX_OUT_SHIFTED,
            PC_BRANCH_ADDR);

    -- MUX for Branch instructions
    DUT_BRANCH_MUX : entity work.PL_BRANCH_MUX
        port map (
            Pipeline,
            Branch, -- for single cycle MUX Sel
            ALU_ZFLG, -- Select bit for no pipeline
            PC_ADD4_OUT, -- In0 for no pipeline
            PC_BRANCH_ADDR, -- In1 for no pipeline
            EX_MEM_ALU_ZFLG_OUT, -- select bit for pipeline
            EX_MEM_PC_OUT, -- In0 for pipeline
            EX_MEM_ALU_RES_OUT, -- in1 for pipeline
            MUX_BRANCH_OUT);    -- branch output




--    DELETE_THIS_DUT_BRANCH_MUX_OLD : entity work.MUX2
--        generic map (WORD_WIDTH)
--        port map (
--            MUX_BRANCH_SEL,     -- Branch AND ALU_ZFLG
--            MUX_BRANCH_IN0,     -- PC + 4
--            MUX_BRANCH_IN1,     -- PC + 4 + Sign extension out
--            MUX_BRANCH_OUT);    -- Input to Jump MUX (0)

    -- MUX for Jump instructions
    DUT_JUMP_MUX : entity work.MUX2
        generic map (WORD_WIDTH)
        port map (
            MUX_JUMP_SEL,       -- Jump (Control unit)
            MUX_JUMP_IN0,       -- Output from Branch MUX
            MUX_JUMP_IN1,       -- Immediate address
            MUX_JUMP_OUT);      -- Input to PC select

    -- Shift left 2 for Jump instructions (top left)
    -- This input takes the immediate instruction bits (25 downto 0)
    DUT_JUMP_SHIFT : entity work.JUMP_SHIFT
       port map (
            JUMP_SL2_IN,
            JUMP_SL2_OUT);


    -- RegDst MUX
    DUT_RegDst_MUX : entity work.REG_DST_MUX
        generic map (ADDR_WIDTH)
        port map(
            Pipeline,
            RegDst, -- From control unit
            INSTR(20 downto 16),
            INSTR(15 downto 11),
            DE_EX_RegDst_OUT,
            DE_EX_RT_OUT,
            DE_EX_RD_OUT,
            MUX_RegDst_OUT);

    -- MUX that selects input for WriteReg destination
--    DUT_WRITE_REG_MUX : entity work.MUX2
--        generic map (WRITE_REG_MUX_WIDTH)
--        port map (
--            MUX_WRITE_REG_SEL,
--            MUX_WRITE_REG_IN0,
--            MUX_WRITE_REG_IN1,
--            MUX_WRITE_REG_OUT);

    -- PC
    DUT_PC : entity work.PC
        generic map (WORD_WIDTH)
        port map (
            CLK,
            PC_Write,
            PC_IN,
            PC_OUT);

    -- PC Add 4
    DUT_PC_ADD4 : entity work.PC_ADD4
        port map (
            PC_ADD4_IN,
            CONST4,
            PC_ADD4_OUT);


    -- Hazard Unit
    DUT_HAZARD : entity work.HAZARD_UNIT
        port map (
            DE_EX_RT_OUT,
            DE_EX_MemRead_OUT,
            IF_DE_RS_OUT,
            IF_DE_RT_OUT,
            STALL_stall,
            IF_DE_Write,
            PC_Write);
    -- Forward Unit
    DUT_FWD : entity work.FWD_UNIT
        port map (
            DE_EX_RT_OUT,
            DE_EX_RS_OUT,
            EX_MEM_RD_OUT,
            EX_MEM_RegWrite_OUT,
            MEM_WB_RD_OUT,
            MEM_WB_RegWrite_OUT,
            HAZ_FWD_A,
            HAz_FWD_B);


    STALL_RegDst_IN <= RegDst;
    STALL_Branch_IN <= Branch;
    STALL_MemRead_IN <= MemRead;
    STALL_MemWrite_IN <= MemWrite;
    STALL_MemToReg_IN <= MemToReg;
    STALL_ALUOp_IN <= CTRL_ALU_OP;
    STALL_ALUSrc_IN <= ALUSrc;
    STALL_RegWrite_IN <= RegWrite;
    STALL_Jump_IN <= Jump;

    DUT_STALL : entity work.CREATE_STALL
        port map (
        STALL_stall,
        STALL_RegDst_IN,
        STALL_Branch_IN,
        STALL_MemRead_IN,
        STALL_MemWrite_IN,
        STALL_MemToReg_IN,
        STALL_ALUOp_IN,
        STALL_ALUSrc_IN,
        STALL_RegWrite_IN,
        STALL_Jump_IN,
        STALL_RegDst_OUT,
        STALL_Branch_OUT,
        STALL_MemRead_OUT,
        STALL_MemWrite_OUT,
        STALL_MemToReg_OUT,
        STALL_ALUOp_OUT,
        STALL_ALUSrc_OUT,
        STALL_RegWrite_OUT,
        STALL_Jump_OUT);



    -- I really just didn't want to put this in a separate file...
    BranchEnOutProcess : process (Pipeline, Branch, ALU_ZFLG) is
    begin
        if (Pipeline = '0') then
            if (Branch = '1') and (ALU_ZFLG = '1') then branchEnableOutput <= '1';
            else branchEnableOutput <= '0';
            end if;
        else -- Pipeline = '1'
            if (EX_MEM_ALU_ZFLG_OUT = '1') and (EX_MEM_Branch_OUT = '1')
                then branchEnableOutput <= '1';
            else branchEnableOutput <= '0';
            end if;
        end if;
    end process;


end architecture;
-- end architecture

-- end of file

