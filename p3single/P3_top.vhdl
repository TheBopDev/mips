-- Author: Josh White
-- Date created:  2023-04-18
-- Date modified: 2023-04-24
-- Entity Overview:
--      This is the top level entity for Phase 3 (Single cycle).
--      I implemented structural behavior. Reference the readme to get more info
--      about a file if desired.


-- Okay, it's currently 3am on the due date. I'm completely restarting because
-- I finished the single cycle, pipeline, and bonus all in one file, and the
-- timing FMax reported less than 5 MHz. That's unacceptable.


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
    generic (
        WORD_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 5
    ) ;

    port (
    CLK                 : in std_logic; -- clock
    RST                 : in std_logic; -- Asynchronous reset
    PC_OUTPUT           : out std_logic_vector(WORD_WIDTH-1 downto 0);
    INSTR_OUTPUT        : out std_logic_vector(WORD_WIDTH-1 downto 0);
    Reg1Data_OUTPUT     : out std_logic_vector(WORD_WIDTH-1 downto 0);
    Reg2Data_OUTPUT     : out std_logic_vector(WORD_WIDTH-1 downto 0);
    WriteData_OUTPUT    : out std_logic_vector(WORD_WIDTH-1 downto 0);
    DMEM_ADDR_OUTPUT    : out std_logic_vector(7 downto 0);
    DMEM_Write_OUTPUT   : out std_logic_vector(WORD_WIDTH-1 downto 0);
    DMEM_Read_OUTPUT    : out std_logic_vector(WORD_WIDTH-1 downto 0);
    ALU_OP_OUTPUT       : out std_logic_vector(1 downto 0);
    ALU_RESULT_OUTPUT   : out std_logic_vector(WORD_WIDTH-1 downto 0);
    WR_EN_OUTPUT        : out std_logic;
    BRANCH_OUTPUT       : out std_logic;
    BRANCH_TAKEN_OUTPUT : out std_logic;
    SL2_OUTPUT          : out std_logic_vector(WORD_WIDTH-1 downto 0);
    ALU_SRC_OUTPUT      : out std_logic;
    RegWrite_OUTPUT     : out std_logic;
    MemWrite_OUTPUT     : out std_logic;
    WriteRegDst_OUTPUT  : out std_logic_vector(ADDR_WIDTH-1 downto 0)
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

    -- IMEM signals
    signal INSTR : std_logic_vector(WORD_WIDTH-1 downto  0);
    signal INSTR_FUNC : std_logic_vector(5  downto  0);
    signal IMEM_WRITE_DATA : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal IMEM_WREN : std_logic;


    -- DMEM signals
    signal DMEM_ADDR : std_logic_vector(7 downto 0);
    signal DMEM_CLK  : std_logic;
    signal DMEM_WriteData : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal DMEM_WREN : std_logic;
    signal DMEM_OUT  : std_logic_vector(WORD_WIDTH-1 downto 0);




    -- Control unit signals
    signal CTRL_INSTR_OP : std_logic_vector(5  downto  0);
    signal CTRL_RegDst   : std_logic;
    signal CTRL_Jump     : std_logic;
    signal CTRL_Branch   : std_logic;
    signal CTRL_MemRead  : std_logic;
    signal CTRL_MemToReg : std_logic;
    signal CTRL_ALU_OP   : std_logic_vector(1  downto 0);
    signal CTRL_MemWrite : std_logic;
    signal CTRL_ALUSrc   : std_logic;
    signal CTRL_RegWrite : std_logic;


    -- for if branch is taken specifically
    signal Branch_Taken : std_logic;


    -- ALU signals
    signal ALU_CONTROL  : std_logic_vector(3  downto 0);
    signal ALU_IN0      : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_IN1      : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_OUT      : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ALU_ZFLG     : std_logic;
    signal ALU_OVF      : std_logic;


    -- Registers signals
    signal ReadReg1     : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal ReadReg2     : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal WriteReg     : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal ReadData1    : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal ReadData2    : std_logic_vector(WORD_WIDTH-1 downto 0);


    -- Signed Extension signals
    signal SEX_IN  : std_logic_vector((WORD_WIDTH/2)-1 downto 0);
    signal SEX_OUT : std_logic_vector(WORD_WIDTH-1 downto 0);


    -- Writeback MUX output
    signal WB_MUX_OUT : std_logic_vector(WORD_WIDTH-1 downto 0);


    -- PC signals
    signal PC_IN                : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal PC_OUT               : std_logic_vector(WORD_WIDTH-1 downto 0);
    -- Constant 4 to add to PC.
    signal CONST4               : std_logic_vector(WORD_WIDTH-1 downto 0) := x"00000004";
    signal PC_ADD4_OUT          : std_logic_vector(WORD_WIDTH-1 downto 0);


    signal PC_BRANCH_ADDR       : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal SL_BRANCH_OUT        : std_logic_vector(WORD_WIDTH-1 downto 0);



    signal BRANCH_ENABLE        : std_logic := '0'; -- Assume not taken




begin -- architecture
    -- Signal assignments to make mapping and reading easier to understand


    -- Linking inputs to the ALU
    -- Link RegData1 to ALU input 1
    ALU_IN0 <= ReadData1;
    -- Linking ALU_IN2 to the output of the ALU_IN2_MUX





    -- Link input of signed extension to the instruction bits
    SEX_IN <= INSTR((WORD_WIDTH/2)-1 downto 0);


    -- Link PC Adder MUX
    Branch_Taken <= '1' when (CTRL_Branch = '1') AND (ALU_ZFLG = '1') else '0';







    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------




    --------------------------------------------------
    -- CONTROL SIGNALS
    --------------------------------------------------
    PC_OUTPUT           <= PC_OUT;
    INSTR_OUTPUT        <= INSTR;
    Reg1Data_OUTPUT     <= ReadData1;
    Reg2Data_OUTPUT     <= ReadData2;
    WriteData_OUTPUT    <= WB_MUX_OUT;
    DMEM_ADDR_OUTPUT    <= DMEM_ADDR;
    DMEM_Write_OUTPUT   <= ReadData2;
    DMEM_Read_OUTPUT    <= DMEM_OUT;
    ALU_RESULT_OUTPUT   <= ALU_OUT;
    WR_EN_OUTPUT        <= CTRL_RegWrite;
    WriteRegDst_OUTPUT  <= WriteReg;
    BRANCH_OUTPUT       <= CTRL_Branch;
    CTRL_INSTR_OP       <= INSTR(WORD_WIDTH-1 downto 26);
    ALU_SRC_OUTPUT      <= CTRL_ALUSrc;
    RegWrite_OUTPUT     <= CTRL_RegWrite;
    ALU_OP_OUTPUT       <= CTRL_ALU_OP;
    BRANCH_OUTPUT       <= CTRL_Branch;
    BRANCH_TAKEN_OUTPUT <= BRANCH_ENABLE;
    ALU_OP_OUTPUT       <= CTRL_ALU_OP;
    MemWrite_OUTPUT     <= CTRL_MemWrite;

    -- Control Unit component
    DUT_CTRL_UNIT : entity work.CTRL_UNIT
        port map (
            CTRL_INSTR_OP,
            CTRL_RegDst,
            CTRL_Jump,
            CTRL_Branch,
            CTRL_MemRead,
            CTRL_MemToReg,
            CTRL_ALU_OP,
            CTRL_MemWrite,
            CTRL_ALUSrc,
            CTRL_RegWrite);



    --------------------------------------------------
    -- DATAPATH SIGNALS
    --------------------------------------------------

    PC_OUTPUT <= PC_OUT;
    -- PC
    DUT_PC : entity work.PC
        generic map (WORD_WIDTH)
        port map(
            CLK,
            PC_IN,
            PC_OUT);


    
    -- PC Add 4
    DUT_PC_ADD4 : entity work.PC_ADD4
        port map (
            PC_OUT,
            CONST4,
            PC_ADD4_OUT);



    -- Write Reg MUX
    DUT_MUX1_WR_MUX : entity work.MUX2
        generic map (ADDR_WIDTH)
        port map (
            CTRL_RegDst,
            INSTR(20 downto 16),
            INSTR(15 downto 11),
            WriteReg);



    ReadReg1 <= INSTR(25 downto 21); -- RS
    ReadReg2 <= INSTR(20 downto 16); -- RT
    INSTR_OUTPUT <= INSTR;
    INSTR_FUNC <= INSTR(5 downto 0);
    
    -- IMEM
    DUT_IMEM : entity work.IMEM
        port map (
            PC_OUT(7 downto 0),
            CLK,
            IMEM_WRITE_DATA,
            IMEM_WREN,
            INSTR);


    -- Registers
    DUT_REGISTERS : entity work.REGISTERS
        generic map (
            WORD_WIDTH,
            ADDR_WIDTH)
        port map (
            CLK,
            ReadReg1,
            ReadReg2,
            WriteReg, -- fix
            WB_MUX_OUT,
            CTRL_RegWrite,
            ReadData1,
            ReadData2);




    -- ALU related components
    DUT_ALU_CTRL : entity work.ALU_CTRL
        port map (
            CTRL_ALU_OP,
            INSTR_FUNC,
            ALU_CONTROL);

    DUT_ALU : entity work.ALU
        port map (
            ALU_CONTROL,
            ReadData1,
            ALU_IN1,
            ALU_OUT,
            ALU_ZFLG,
            ALU_OVF);

    DUT_MUX2_ALU_IN1_MUX : entity work.MUX2
        port map (
            CTRL_ALUSrc,        -- From control unit
            ReadData2,          -- IN0
            SEX_OUT,            -- IN1
            ALU_IN1);   -- ALU Input 1


    -- Signed Extension component
    DUT_SEX : entity work.SEX
        port map (
            SEX_IN,     -- 16 bits
            SEX_OUT);   -- 32 bits



    DMEM_ADDR           <= ALU_OUT(7 downto 0);
    -- DMEM
    DUT_DMEM : entity work.DMEM
        port map(
            DMEM_ADDR,
            CLK,
            ReadData2,
            CTRL_MemWrite,
            DMEM_OUT);






    -- MUX for writeback selection
    DUT_MUX3_WB_MUX : entity work.MUX2
        generic map (WORD_WIDTH)
        port map (
            CTRL_MemToReg,     -- MemToReg (Control unit)
            ALU_OUT,     -- ALU output
            DMEM_OUT,     -- Data Memory output
            WB_MUX_OUT);    -- Input to IMEM Data


    SL2_OUTPUT <= SL_BRANCH_OUT;

    -- Calculate PC Branch address (PC_BRANCH_ADDR)
    -- First shift left 2 the signed extension output
    DUT_SL2_BRANCH : entity work.SL2
        generic map (WORD_WIDTH)
        port map(
            SEX_OUT,
            SL_BRANCH_OUT);
    DUT_BRANCH_ADDR : entity work.ADDER
        generic map (WORD_WIDTH)
        port map (
            PC_ADD4_OUT,
            SL_BRANCH_OUT,
            PC_BRANCH_ADDR);


    -- MUX for Branch instructions
    DUT_BRANCH_MUX : entity work.MUX2
        generic map (WORD_WIDTH)
        port map (
            BRANCH_ENABLE,     -- Branch AND ALU_ZFLG
            PC_ADD4_OUT,     -- PC + 4
            PC_BRANCH_ADDR,     -- PC Branch Out
            PC_IN);    -- Input to Jump MUX (0)




    -- one process (for branch)
    chooseBranch : process(CTRL_Branch, ALU_ZFLG) is
    begin
        if (CTRL_Branch = '1') and (ALU_ZFLG = '1') then BRANCH_ENABLE <= '1';
        else BRANCH_ENABLE <= '0';
        end if;
    end process;



end architecture;
-- end architecture

-- end of file

