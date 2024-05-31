-- Author: Josh White
-- Date created:  2023-04-22
-- Date modified: 2023-04-23
-- Entity Overview:
--      This entity is used to create a stall in the pipeline.

--------------------------------------------------------------------------------
-- IEEE libraries
--------------------------------------------------------------------------------
library IEEE;
use     IEEE.std_logic_1164.all;
use     IEEE.numeric_std.all;



--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity CREATE_STALL is
    port (
        stall : in std_logic;
        RegDst_IN : in std_logic;
        Branch_IN : in std_logic;
        MemRead_IN : in std_logic;
        MemWrite_IN : in std_logic;
        MemToReg_IN : in std_logic;
        ALUOp_IN : in std_logic_vector(1 downto 0);
        ALUSrc_IN : in std_logic;
        RegWrite_IN : in std_logic;
        Jump_IN : in std_logic;

        RegDst_OUT : out std_logic;
        Branch_OUT : out std_logic;
        MemRead_OUT : out std_logic;
        MemWrite_OUT : out std_logic;
        MemToReg_OUT : out std_logic;
        ALUOp_OUT : out std_logic_vector(1 downto 0);
        ALUSrc_OUT : out std_logic;
        RegWrite_OUT : out std_logic;
        Jump_OUT : out std_logic
    ) ;
end entity CREATE_STALL;


--------------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------------

architecture behavioral of CREATE_STALL is
    
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
chooseStall : process(stall) is
begin
    if stall = '0' then -- there is no stall
        RegDst_OUT <= RegDst_IN;
        Branch_OUT <= Branch_IN;
        MemRead_OUT <= MemRead_IN;
        MemWrite_OUT <= MemWrite_IN;
        MemToReg_OUT <= MemToReg_IN;
        ALUOp_OUT <= ALUOp_IN;
        ALUSrc_OUT <= ALUSrc_IN;
        RegWrite_OUT <= RegWrite_IN;
        Jump_OUT <= Jump_IN;
    else -- there is a stall, we need to freeze the pipeline
        RegDst_OUT <= '0';
        Branch_OUT <= '0';
        MemRead_OUT <= '0';
        MemWrite_OUT <= '0';
        MemToReg_OUT <= '0';
        ALUOp_OUT <= "00";
        ALUSrc_OUT <= '0';
        RegWrite_OUT <= '0';
        Jump_OUT <= '0';
    end if;
end process;
-- Process end

end architecture;
-- end architecture

-- end of file

