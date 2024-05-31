-- Author: Josh White
-- Date created:  2023-04-23
-- Date modified: 2023-04-23
-- Entity Overview:
-- Pipeline reg specific since my generic will be a pain to work with
-- for addressing elements.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity DEEX_REG is
    port (
    CLK : in std_logic;
    DE_EX_RegDst_IN         : in  std_logic;
    DE_EX_RegDst_OUT        : out std_logic;
    DE_EX_RegWrite_IN       : in  std_logic;
    DE_EX_RegWrite_OUT      : out std_logic;
    DE_EX_MemRead_IN        : in  std_logic;
    DE_EX_MemRead_OUT       : out std_logic;
    DE_EX_MemToReg_IN       : in  std_logic;
    DE_EX_MemToReg_OUT      : out std_logic;
    DE_EX_MemWrite_IN       : in  std_logic;
    DE_EX_MemWrite_OUT      : out std_logic;
    DE_EX_Branch_IN         : in  std_logic;
    DE_EX_Branch_OUT        : out std_logic;
    DE_EX_MemWriteRead_IN   : in  std_logic;
    DE_EX_MemWriteRead_OUT  : out std_logic;
    DE_EX_ALUOp_IN          : in  std_logic_vector(1  downto 0);
    DE_EX_ALUOp_OUT         : out std_logic_vector(1  downto 0);
    DE_EX_ALUSrc_IN         : in  std_logic;
    DE_EX_ALUSrc_OUT        : out std_logic;
    DE_EX_PC_IN             : in  std_logic_vector(31 downto 0);
    DE_EX_PC_OUT            : out std_logic_vector(31 downto 0);
    DE_EX_RS_IN             : in  std_logic_vector(4  downto 0);
    DE_EX_RS_OUT            : out std_logic_vector(4  downto 0);
    DE_EX_RT_IN             : in  std_logic_vector(4  downto 0);  
    DE_EX_RT_OUT            : out std_logic_vector(4  downto 0);
    DE_EX_RD_IN             : in  std_logic_vector(4  downto 0);
    DE_EX_RD_OUT            : out std_logic_vector(4  downto 0);
    DE_EX_FUNC_IN           : in  std_logic_vector(5  downto 0);
    DE_EX_FUNC_OUT          : out std_logic_vector(5  downto 0);
    DE_EX_Reg1Data_IN       : in  std_logic_vector(31 downto 0);
    DE_EX_Reg1Data_OUT      : out std_logic_vector(31 downto 0);
    DE_EX_Reg2Data_IN       : in  std_logic_vector(31 downto 0);
    DE_EX_Reg2Data_OUT      : out std_logic_vector(31 downto 0);
    DE_EX_SEX_IN            : in  std_logic_vector(31 downto 0);
    DE_EX_SEX_OUT           : out std_logic_vector(31 downto 0)
    ) ;
end entity DEEX_REG;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of DEEX_REG is
    
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
UpdateDEEX : process(CLK) is
begin
    if (rising_edge(CLK)) then
        DE_EX_RegDst_OUT        <= DE_EX_RegDst_IN;
        DE_EX_RegWrite_OUT      <= DE_EX_RegWrite_IN;
        DE_EX_MemRead_OUT       <= DE_EX_MemRead_IN;
        DE_EX_MemWrite_OUT      <= DE_EX_MemWrite_IN;
        DE_EX_Branch_OUT        <= DE_EX_Branch_IN;
        DE_EX_MemWriteRead_OUT  <= DE_EX_MemWriteRead_IN;
        DE_EX_ALUOp_OUT         <= DE_EX_ALUOp_IN;
        DE_EX_ALUSrc_OUT        <= DE_EX_ALUSrc_IN;
        DE_EX_PC_OUT            <= DE_EX_PC_IN;
        DE_EX_RS_OUT            <= DE_EX_RS_IN;
        DE_EX_RT_OUT            <= DE_EX_RT_IN;
        DE_EX_RD_OUT            <= DE_EX_RD_IN;
        DE_EX_Reg1Data_OUT      <= DE_EX_Reg1Data_IN;
        DE_EX_Reg2Data_OUT      <= DE_EX_Reg2Data_IN;
        DE_EX_SEX_OUT           <= DE_EX_SEX_IN;
        DE_EX_MemToReg_OUT      <= DE_EX_MemToReg_IN;
        DE_EX_FUNC_OUT          <= DE_EX_FUNC_IN;
    end if;
    -- If no rising edge, do nothing
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

