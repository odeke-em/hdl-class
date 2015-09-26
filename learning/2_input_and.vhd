entity And2 is
    port (x, y: in BIT; z: out BIT);
end entity And2;

architecture gate1 of And2 is
begin
    z <= x and y;
end architecture gate1;
