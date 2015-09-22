entity And2 is
    port (x, y: in BIT; z: out BIT);
end entity And2;

architecture arch3 of And2 is
    signal xy: BIT_VECTOR (0 to 1);
begin
    xy <= x & y; -- to attach y to x, or "concatenation"

    with xy select
        z <= '1' when "11", '0' when others;
end architecture arch3;

-- When entity has only one architecture, architecture name
-- can be omitted
