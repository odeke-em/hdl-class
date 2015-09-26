entity And2 is
    generic (delay: DELAY_LENGTH)
    -- DELAY_LENGTH is a subtype: time range 0 fs to highest_time in the system
    port (x, y: in BIT; z: out BIT);
end entity And2;

architecture arch2 of And2 is
begin
    z <= x and y after delay;
end architecture arch2;

-- When gate is used in a netlist, a value is passed to the model using a generic map

g2: entity WORK.And2(arch2) generic map(5 ns) port map(p, b, q);
-- Or the non-positional form can be used

g2: entity WORK.And2(arch2) generic map(delay => 5ns) port map (z=>q, x=>p, y=>b);

-- Omit generic map if default value is used
generic(delay: DELAY_LENGTH := 5 ns);

-- Using defaults
g2: entity WORK.And2(arch2) port map(p, b, q); -- 5ns is passed to delay

-- Or like this
g2: entity WORK.And2(arch2) generic map(3 ns) port map(p, b, q);

-- the default value will be used if reserved word "open" is used:
g2: entity WORK.And2(arch2) generic map(open) port map(p, b, q);
