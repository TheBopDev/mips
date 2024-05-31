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
    INSTR_OP : in  std_logic_vector(5 downto 0);
    RegDst   : out std_logic;
    Jump     : out std_logic;
    Branch   : out std_logic;
    MemRead  : out std_logic;
    MemToReg : out std_logic;
    ALU_OP   : out std_logic_vector(1 downto 0);
    MemWrite : out std_logic;
    ALUSrc   : out std_logic;
    RegWrite : out std_logic
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


begin -- architecture

    --------------------------------------------------
    -- Component declarations
    --------------------------------------------------

    -- ALU_OP is the first two bits of the instruction
    ALU_OP <= INSTR_OP(5 downto 4);


    -- Comment out the following line to implement jumps
    Jump <= '0';



end architecture;
-- end architecture

-- end of file

