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
    MEM_WB_WriteRegAddr_Output : out std_logic_vector(4 downto 0);
    MEM_WB_MemToReg_Output : out std_logic;
    INSTR_Output : out std_logic_vector(31 downto 0);
    INSTR_DE_Reg1Data_Output : out std_logic_vector(31 downto 0);
    INSTR_DE_Reg2Data_Output : out std_logic_vector(31 downto 0);
    INSTR_DE_SEX_Output : out std_logic_vector(31 downto 0);
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
    constant WORD_WIDTH : integer := 32; -- 32 bits wide
    constant ADDR_WIDTH : integer := 5;


    --------------------------------------------------
    -- CHANGES TO MAKE IT RUN IN A PIPELINE
    --------------------------------------------------
    -- Need pipeline registers
    -- Find the number of bits each register needs
    -- create the generic integer for the width

    -- Other bonus signals
    signal HStall : std_logic; -- hazard stall
    signal PC_Write : std_logic; -- PC write enable



    constant IFDE_WIDTH   : integer := 32; -- Need to change this

    signal IF_DE_RS_IN     : std_logic_vector(4 downto 0);
    signal IF_DE_RT_IN     : std_logic_vector(4 downto 0);
    signal IF_DE_RD_IN     : std_logic_vector(4 downto 0);
    signal IF_DE_Write_IN  : std_logic;




    constant DEEX_WIDTH   : integer := 32; -- Need to change this

    signal DE_EX_RS_IN     : std_logic_vector(4 downto 0);
    signal DE_EX_RT_IN     : std_logic_vector(4 downto 0);
    signal DE_EX_MemRead_IN : std_logic;




    constant EXMEM_WIDTH  : integer := 32; -- Need to change this
    signal EX_MEM_PC_IN  : std_logic_vector(31 downto 0);
    signal EX_MEM_PC_OUT : std_logic_vector(31 downto 0);
    signal EX_MEM_ALU_ZFLG_IN : std_logic;
    signal EX_MEM_ALU_ZFLG_OUT : std_logic;
    signal EX_MEM_ALU_RES_IN : std_logic_vector(31 downto 0);
    signal EX_MEM_ALU_RES_OUT : std_logic_vector(31 downto 0);
    signal EX_MEM_DMEM_ADDR_IN : std_logic_vector(7 downto 0);




    constant MEMWB_WIDTH  : integer := 32; -- Need to change this
    signal MEM_WB_ALU_RES_IN : std_logic_vector(31 downto 0);
    signal MEM_WB_ALU_RES_OUT : std_logic_vector(31 downto 0);
    signal MEM_WB_DMEM_IN : std_logic_vector(31 downto 0);
    signal MEM_WB_DMEM_OUT : std_logic_vector(31 downto 0);



    --------------------------------------------------
    signal PC_IN : std_logic_vector(31 downto 0); -- input to PC
    signal PC_OUT : std_logic_vector(31 downto 0); -- output from PC


    -- IMEM signals
    signal IMEM_ADDR : std_logic_vector(7  downto 0);
    -- clock = CLK
    signal IMEM_DATA : std_logic_vector(31 downto 0); -- input data
    signal IMEM_WREN : std_logic; -- write enable
    signal INSTR : std_logic_vector(31 downto  0); -- "q" output
    -- Remapping signals to make it easier to read
    signal INSTR_FUNC : std_logic_vector(5  downto  0);



    -- Control unit signals
    signal INSTR_OP : std_logic_vector(5  downto  0);
    signal RegDst   : std_logic;
    signal Jump     : std_logic;
    signal Branch   : std_logic;
    signal MemRead  : std_logic;
    signal MemToReg : std_logic;
    signal ALU_OP   : std_logic_vector(1  downto 0);
    signal MemWrite : std_logic;
    signal ALUSrc   : std_logic;
    signal RegWrite : std_logic;


    -- ALU signals
    -- ALU is one word wide (32 bits)
    signal ALU_IN0 : std_logic_vector(31 downto 0);
    signal ALU_IN1 : std_logic_vector(31 downto 0);
    signal ALU_CONTROL : std_logic_vector(3  downto 0); -- control
    signal ALU_OUT : std_logic_vector(31 downto 0); -- result
    signal ALU_ZFLG : std_logic; -- zero flag
    signal ALU_OVF : std_logic; -- overflow


    -- Registers signals
    signal ReadReg1     : std_logic_vector(4  downto 0);
    signal ReadReg2     : std_logic_vector(4  downto 0);
    signal WriteReg     : std_logic_vector(4  downto 0);
    signal WriteData    : std_logic_vector(31 downto 0);
    signal Reg1Data     : std_logic_vector(31 downto 0);
    signal Reg2Data     : std_logic_vector(31 downto 0);


    -- Signed Extension signals
    signal SEX_IN  : std_logic_vector(15 downto 0);
    signal SEX_OUT : std_logic_vector(31 downto 0);


    -- ALU_IN0_MUX signals
    signal ALU_IN0_SEL     : std_logic_vector(1 downto 0);
    signal ALU_IN0_MUX_IN0 : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN0_MUX_IN1 : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN0_MUX_IN2 : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN0_MUX_OUT : std_logic_vector(WORD_WIDTH-1 downto 0);


    -- ALU_IN1_MUX signals
    -- select bit is ALUSrc from control unit
    signal ALU_IN1_MUX_IN0 : std_logic_vector(31 downto 0);
    signal ALU_IN1_MUX_IN1 : std_logic_vector(31 downto 0);
    signal ALU_IN1_MUX_OUT : std_logic_vector(31 downto 0);

    -- Writeback MUX signals
    -- select bit is MemToReg from control unit
    signal WB_MUX_SEL : std_logic;
    signal WB_MUX_IN0 : std_logic_vector(31 downto 0);
    signal WB_MUX_IN1 : std_logic_vector(31 downto 0);
    signal WB_MUX_OUT : std_logic_vector(31 downto 0);


    -- PC Add select MUX signals
    signal MUX_BRANCH_SEL : std_logic;
    signal MUX_BRANCH_IN0 : std_logic_vector(31 downto 0);
    signal MUX_BRANCH_IN1 : std_logic_vector(31 downto 0);
    signal MUX_BRANCH_OUT : std_logic_vector(31 downto 0);

    -- Jump MUX
    signal MUX_JUMP_SEL : std_logic;
    signal MUX_JUMP_IN0 : std_logic_vector(31 downto 0);
    signal MUX_JUMP_IN1 : std_logic_vector(31 downto 0);
    signal MUX_JUMP_OUT : std_logic_vector(31 downto 0);


    -- Write Register Select MUX
    constant WRITE_REG_MUX_WIDTH : integer := 5; -- 5 bits wide
    signal MUX_WRITE_REG_SEL : std_logic; -- RegDst
    signal MUX_WRITE_REG_IN0 : std_logic_vector(4 downto 0);
    signal MUX_WRITE_REG_IN1 : std_logic_vector(4 downto 0);
    signal MUX_WRITE_REG_OUT : std_logic_vector(4 downto 0);


    -- PC Add4 signals
    signal PC_ADD4_IN : std_logic_vector(31 downto 0); -- PC
    -- Constant 4 to add to PC.
    signal CONST4 : std_logic_vector(31 downto 0) := x"00000004";
    signal PC_ADD4_OUT : std_logic_vector(31 downto 0);


    signal PC_BRANCH_ADDR : std_logic_vector(31 downto 0);
    signal PC_JUMP_ADDR : std_logic_vector(31 downto 0);
    signal JUMP_SL2_IN  : std_logic_vector(25 downto 0); -- Immediate (instr 25:0)
    signal JUMP_SL2_OUT : std_logic_vector(27 downto 0);

    ----------------------------------------------------------------------------
    -- DATA MEMORY
    ----------------------------------------------------------------------------
    -- DMEM signals
    signal DMEM_ADDR : std_logic_vector(31 downto 0);
    signal DMEM_OUT  : std_logic_vector(31 downto 0);


    -- Find where to put these
    signal HAZ_FWD_A : std_logic_vector(1 downto 0);
    signal IFDE_ReadData1 : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal toWriteData : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DEEX_ALU_OUT : std_logic_vector(WORD_WIDTH-1 downto 0);

    signal SEX_OUT_SHIFTED : std_logic_vector(WORD_WIDTH-1 downto 0);



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





    -- Linking inputs to the ALU
    -- Link RegData1 to ALU input 1
    ALU_IN0 <= ALU_IN0_MUX_OUT; -- single cycle
    -- Then link signed extension output to its MUX.
    ALU_IN1_MUX_IN0 <= Reg2Data;
    ALU_IN1_MUX_IN1 <= SEX_OUT;
    -- Linking ALU_IN1 to the output of the ALU_IN1_MUX
    ALU_IN1 <= ALU_IN1_MUX_OUT;


    -- Linking the RegWrite Select MUX
    MUX_WRITE_REG_SEL <= RegDst;
    MUX_WRITE_REG_IN0 <= INSTR(20 downto 16);
    MUX_WRITE_REG_IN1 <= INSTR(15 downto 11);
    

    -- Linking inputs to the Registers block
    ReadReg1 <= INSTR(25 downto 21);
    ReadReg2 <= INSTR(20 downto 16);
    WriteReg <= MUX_WRITE_REG_OUT;
    WriteData <= WB_MUX_OUT;



    -- Link input of signed extension to the instruction bits
    SEX_IN <= INSTR(15 downto 0);

    -- Link appropriate signals to the writeback MUX
    WB_MUX_SEL <= MemToReg;
    WB_MUX_IN0 <= ALU_OUT;
    WB_MUX_IN1 <= DMEM_OUT;

    -- Link PC Adder MUX
    --MUX_BRANCH_SEL Must be handled in process
    MUX_BRANCH_IN0 <= PC_ADD4_OUT;
    MUX_BRANCH_IN1 <= PC_BRANCH_ADDR;


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
    branchEnableOutput <= MUX_BRANCH_SEL;
    PC_output <= PC_OUT;
    MEM_WB_DMEM_Output <= x"DEADBEEF";
    MEM_WB_RegWrite_Output : out std_logic;
    ALU_OperationOutput : out std_logic_vector(3 downto 0);
    MEM_WB_WriteRegAddr_Output : out std_logic_vector(4 downto 0);
    MEM_WB_MemToReg_Output : out std_logic;
    INSTR_Output <= INSTR;
    DE_EX_Reg1Data_Output : out std_logic_vector(31 downto 0);
    DE_EX_Reg2Data_Output : out std_logic_vector(31 downto 0);
    DE_EX_SEX_Output : out std_logic_vector(31 downto 0);
    FWD_A_Output <= HAZ_FWD_A;
    FWD_B_Output <= HAZ_FWD_B;

    

    WritebackDataOutput <= WB_MUX_OUT;
    ALU_OVERFLOW : out std_logic -- ALU overflow flag


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

    -- Instruction Fetch / Decode Register
    DUT_IF_DE_REG : entity work.PIPELINE_REG
        generic map (IFDE_WIDTH)
        port map (
            CLK,
            Pipeline,
            IF_DE_IN,
            IF_DE_OUT);

    -- Decode / Execute Reigster
    DUT_DE_EX_REG : entity work.PIPELINE_REG
        generic map (DEEX_WIDTH)
        port map (
            CLK,
            Pipeline,
            DE_EX_IN,
            DE_EX_OUT);

    -- Execute / Memory Register
    DUT_EX_MEM_REG : entity work.PIPELINE_REG
        generic map (EXMEM_WIDTH)
        port map (
            CLK,
            Pipeline,
            EX_MEM_IN,
            EX_MEM_OUT);

    -- Memory / Writeback Register
    DUT_MEM_WB_REG : entity work.PIPELINE_REG
        generic map (MEMWB_WIDTH)
        port map (
            CLK,
            Pipeline,
            MEM_WB_IN,
            MEM_WB_OUT);





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
            INSTR_OP,
            RegDst,
            Jump,
            Branch,
            MemRead,
            MemToReg,
            ALU_OP,
            MemWrite,
            ALUSrc,
            RegWrite);


    -- ALU related components
    DUT_ALU_CTRL : entity work.ALU_CTRL
        port map (
            ALU_OP,
            INSTR_FUNC,
            ALU_CONTROL);

    DUT_ALU : entity work.ALU
        port map (
            ALU_IN0,
            ALU_IN1,
            ALU_CONTROL,
            ALU_OUT,
            ALU_ZFLG,
            ALU_OVF);
    ALU_OVERFLOW <= ALU_OVF;

    DUT_ALU_IN0_MUX : entity work.MUX3
        generic map (WORD_WIDTH)
        port map (
            BonusEnable,
            HAZ_FWD_A,          -- Select: hazard unit's forward A output
            Reg1Data,
            toWriteData,
            DEEX_ALU_OUT,
            ALU_IN0_MUX_OUT);


    DUT_ALU_IN1_MUX : entity work.MUX2
        generic map (WORD_WIDTH)
        port map (
            ALUSrc,             -- From control unit
            ALU_IN1_MUX_IN0,    -- Reg2Data
            ALU_IN1_MUX_IN1,    -- Sign extension out
            ALU_IN1_MUX_OUT);   -- ALU Input 2


    -- Signed Extension component
    DUT_SEX : entity work.SEX
        port map (
            SEX_IN,     -- 16 bits
            SEX_OUT);   -- 32 bits



    -- MUX for writeback selection
    DUT_WB_MUX : entity work.MUX2
        generic map (WORD_WIDTH)
        port map (
            WB_MUX_SEL,     -- MemToReg (Control unit)
            WB_MUX_IN0,     -- ALU output
            WB_MUX_IN1,     -- Data Memory output
            WB_MUX_OUT);    -- Input to IMEM Data

    -- Handle branch input
    DUT_BRANCH_ADDER: entity work.BRANCH_ADDER
        generic map (WORD_WIDTH)
        port map (
            PC_ADD4_OUT,
            SEX_OUT_SHIFTED,
            PC_BRANCH_ADDR);

    -- MUX for Branch instructions
    DUT_BRANCH_MUX : entity work.MUX2
        generic map (WORD_WIDTH)
        port map (
            MUX_BRANCH_SEL,     -- Branch AND ALU_ZFLG
            MUX_BRANCH_IN0,     -- PC + 4
            MUX_BRANCH_IN1,     -- PC + 4 + Sign extension out
            MUX_BRANCH_OUT);    -- Input to Jump MUX (0)

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

    -- MUX that selects input for WriteReg destination
    DUT_WRITE_REG_MUX : entity work.MUX2
        generic map (WRITE_REG_MUX_WIDTH)
        port map (
            MUX_WRITE_REG_SEL,
            MUX_WRITE_REG_IN0,
            MUX_WRITE_REG_IN1,
            MUX_WRITE_REG_OUT);

    -- PC
    DUT_PC : entity work.PC
        port map (
            CLK,
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
            DE_EX_RT,
            DE_EX_MemRead,
            IF_DE_RS,
            IF_DE_RT,
            HStall,
            IF_DE_Write,
            PC_Write);
    -- Forward Unit
    DUT_FWD : entity work.FWD_UNIT
        port map (
            DE_EX_RT,
            DE_EX_MemRead,
            IF_DE_RS,
            IF_DE_RT,
            IF_DE_Write,
            HAZ_FWD_A,
            HAZ_FWD_B);


    -- Had to put the branch mux selection part here because for some reason it wouldn't work
    -- outside of a process statement.
    BranchMuxSel: process (Branch, ALU_ZFLG) is
    begin
        if (Branch = '1') AND (ALU_ZFLG = '1') then
            MUX_BRANCH_SEL <= '1';
        else
            MUX_BRANCH_SEL <= '0';
        end if;
    end process;



end architecture;
-- end architecture

-- end of file

