-- Write unit for Registers.

library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;



entity REGWRITE is
    Port (
        addr : in std_logic_vector(4 downto 0); -- RD
        wrEn : in std_logic; -- Write Enable (from testbench or instruction)
        RD_1hot : out std_logic_vector(31 downto 0)
       );
end REGWRITE;



architecture arch of REGWRITE is

    -- decode_out is onehot
    signal decode_out : std_logic_vector(31 downto 0) := x"00000000";

begin

    -- Decode the address into the onehot signal.
    DUT_DECODER : entity work.DECODER
        port map (
            addr, -- RD select
            decode_out -- onehot signal
        );

    process (wrEn, decode_out)
    begin
        if (wrEn = '1') then
            RD_1hot <= decode_out;
        else
            RD_1hot <= x"00000000"; -- don't write to any register
        end if;
    end process;

end architecture arch;
