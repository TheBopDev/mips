-- Author: Josh White
-- Date created: 2023-04-22
-- Date modified: 2023-04-24
-- Now supports pipeline implementation



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Signed Extension

entity SEX is
    generic (
        WORD_WIDTH : integer := 32
        ) ;

    port(
        Pipeline        : in  std_logic;
        NP_IMM          : in  std_logic_vector((WORD_WIDTH/2)-1 downto 0);
        YP_IMM          : in  std_logic_vector((WORD_WIDTH/2)-1 downto 0);
        OUTPUT          : out std_logic_vector(WORD_WIDTH-1 downto 0)
        );
end entity SEX;


architecture behavioral of SEX is
begin

    SEX_process : process(Pipeline, NP_IMM, YP_IMM)
    begin
        if (Pipeline = '0') then -- Sign extend the non-pipeliend input
            if NP_IMM(15) = '1' then OUTPUT <= x"FFFF" & NP_IMM;
            else OUTPUT <= x"0000" & NP_IMM;
            end if;
        else -- Pipeline = '1', so sign extend the pipelined-input
            if YP_IMM(15) = '1' then OUTPUT <= x"FFFF" & YP_IMM;
            else OUTPUT <= x"0000" & YP_IMM;
            end if;
        end if;
    end process;

end architecture;
