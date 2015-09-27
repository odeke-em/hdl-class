library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is (

    Port(
        A:      in STD_LOGIC;
        B:      in STD_LOGIC;
        Cin:    in STD_LOGIC;
        Cout:   out STD_LOGIC;
        Sum:    out STD_LOGIC;
    );

);

architecture FullAdderBehavioral is
begin
    
    Sum <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));

end FullAdderBehavioral;
