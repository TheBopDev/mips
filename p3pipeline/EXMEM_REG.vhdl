-- Author: Josh White
-- Date created:  2023-04-23
-- Date modified: 2023-04-23
-- Entity Overview:
-- Execute/decode register...

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity EXMEM_REG is
    generic (
        WORD_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 5
    ) ;
    port (
    CLK                 : in  std_logic;
    -- Pipeline            : in std_logic; -- now this is handled in top level
    --                                        with a mux.
    EX_MEM_Branch_IN    : in  std_logic;
    EX_MEM_RD_IN        : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    EX_MEM_PC_IN        : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    EX_MEM_ALU_RES_IN   : in  std_logic_vector(WORD_WIDTH-1 downto 0);
    EX_MEM_ALU_ZFLG_IN  : in  std_logic;
    EX_MEM_ALU_OVF_IN   : in  std_logic;
    EX_MEM_RegWrite_IN  : in  std_logic;
    EX_MEM_MemToReg_IN  : in  std_logic;

    EX_MEM_Branch_OUT   : out std_logic;
    EX_MEM_RD_OUT       : out std_logic_vector(ADDR_WIDTH-1 downto 0);
    EX_MEM_PC_OUT       : out std_logic_vector(WORD_WIDTH-1 downto 0);
    EX_MEM_ALU_RES_OUT  : out std_logic_vector(WORD_WIDTH-1 downto 0);
    EX_MEM_ALU_ZFLG_OUT : out std_logic;
    EX_MEM_ALU_OVF_OUT  : out std_logic;
    EX_MEM_RegWrite_OUT : out std_logic;
    EX_MEM_MemToReg_OUT : out std_logic
    ) ;
end entity EXMEM_REG;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of EXMEM_REG is
    
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
EXMEM_Update : process(CLK) is
begin
    -- Update on rising edge only
    if (rising_edge(CLK)) then 
        EX_MEM_RD_OUT       <= EX_MEM_RD_IN;
        EX_MEM_PC_OUT       <= EX_MEM_PC_IN;
        EX_MEM_ALU_RES_OUT  <= EX_MEM_ALU_RES_IN;
        EX_MEM_ALU_ZFLG_OUT <= EX_MEM_ALU_ZFLG_IN;
        EX_MEM_ALU_OVF_OUT  <= EX_MEM_ALU_OVF_IN;
        EX_MEM_RegWrite_OUT <= EX_MEM_RegWrite_IN;
    end if;
    -- otherwise, do nothing
    -- The pipeline is handled through a mux now...
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

