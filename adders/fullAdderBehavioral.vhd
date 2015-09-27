-- This example was provided by:
--      Bruce Cockburn and Jie Han
-- However it was a collaboration between Qiushi Jiang and myself
-- to modify it and fix up changes

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity behavioralNBitAdder is

    generic(width: integer := 16);

    Port(
        A:      in STD_LOGIC_VECTOR(width - 1 downto 0);
        B:      in STD_LOGIC_VECTOR(width - 1 downto 0);

        -- Sum contains that extra bit to save up Cout
        Sum:    out STD_LOGIC_VECTOR(width downto 0);
    );

end behavioralNBitAdder;

architecture Behavioral of behavioralNBitAdder is
begin
    Sum <= ('0' & A) + ('0' & B);
end Behavioral;
