-- Author: Josh White
-- Date created:  2023-04-23
-- Date modified: 2023-04-23
-- Entity Overview:
-- ... I don't want to talk about it.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity MEMWB_REG is
    port (
    CLK                 : in  std_logic;
    MEM_WB_PC_IN        : in  std_logic_vector(31 downto 0);
    MEM_WB_RD_IN        : in  std_logic_vector(4  downto 0);
    MEM_WB_ALU_RES_IN   : in  std_logic_vector(31 downto 0);
    MEM_WB_DMEM_IN      : in  std_logic_vector(31 downto 0);
    MEM_WB_RegWrite_IN  : in  std_logic;
    MEM_WB_MemToReg_IN  : in  std_logic;
    MEM_WB_WriteReg_IN  : in  std_logic;
    MEM_WB_PC_OUT       : out std_logic_vector(31 downto 0);
    MEM_WB_RD_OUT       : out std_logic_vector(4  downto 0);
    MEM_WB_ALU_RES_OUT  : out std_logic_vector(31 downto 0);
    MEM_WB_DMEM_OUT     : out std_logic_vector(31 downto 0);
    MEM_WB_RegWrite_OUT : out std_logic;
    MEM_WB_MemToReg_OUT : out std_logic;
    MEM_WB_WriteReg_OUT : out std_logic
    ) ;
end entity MEMWB_REG;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of MEMWB_REG is
    
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
UpdateReg : process(CLK) is
begin
    if (rising_edge(CLK)) then
        -- code
        MEM_WB_RD_OUT       <=  MEM_WB_RD_IN;
        MEM_WB_ALU_RES_OUT  <=  MEM_WB_ALU_RES_IN;
        MEM_WB_DMEM_OUT     <=  MEM_WB_DMEM_IN;
        MEM_WB_RegWrite_OUT <=  MEM_WB_RegWrite_IN;
        MEM_WB_MemToReg_OUT <=  MEM_WB_MemToReg_IN;
        MEM_WB_WriteReg_OUT <=  MEM_WB_WriteReg_IN;
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

