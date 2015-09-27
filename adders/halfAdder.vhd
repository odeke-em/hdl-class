library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfAdder is

    Port (
        A:      in STD_LOGIC;
        B:      in STD_LOGIC;
        Sum:    out STD_LOGIC;
        Cout:   out STD_LOGIC;
    );

end entity;

architecture HalfAdderBehavioral is
begin

    Sum  <= A xor B;
    Cout <= A and B;

end HalfAdderBehavioral;
