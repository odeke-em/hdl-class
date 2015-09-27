-- This example was provided by:
--      Bruce Cockburn and Jie Han
-- However it was a collaboration between Qiushi Jiang and myself
-- to modify it and fix up changes

library IEEE;

using IEEE.STD_LOGIC_1164.all;

entity NBitAdder is

    generic(width: integer := 16);

    Port (
        A:      in STD_LOGIC_VECTOR(width - 1 downto 0);
        B:      in STD_LOGIC_VECTOR(width - 1 downto 0);
        Sum:    out STD_LOGIC_VECTOR(width downto 0);
    );

end NBitAdder;

architecture Behavioral of NBitAdder is

    component fullAdder is
        Port(
            A:      in STD_LOGIC;
            B:      in STD_LOGIC;
            Sum:    out STD_LOGIC;
            Cout:   out STD_LOGIC;
        );
    end component fullAdder;
            
    signal carries: STD_LOGIC_VECTOR(width downto 0);

begin:
    FAs: for i in 0 to width - 1 generate
        aFA: fullAdder port map(
                                    A => A(i),
                                    B => B(i),
                                    Cin => carries(i),
                                    Sum => Sum(i);
                                    Cout => carries(i+1)
                            );
    end generate;

    carries(0) <= '0';
    sum(width) <= carries(width);

end Behavioral;
