entity func is
    port (a, b, c: in BIT; z: out BIT);
end entity func;

architecture netlist of func is
    signal p, q, r: BIT; -- Defines the number and type of I/O buses;
begin
    g1: entity WORK.Not1(gate1) port map(a, p);
    -- The instance has a name (g1), the type of gate (gate1) and a clause of "port map"
    -- Map ports between external and internal signals
    g2: entity WORK.And2(gate1) port map(p, b, q);
    g3: entity WORK.And2(gate1) port map(a, c, r);
    -- WORK: Current working library/directory where entity and architecture are compiled
    g4: entity WORK.Or2(gate1) port map(q, r, z);
end architecture netlist;
-- Signal can be assigned in different order:
-- g2: entity WORK.And2(gate1) port map(z=>p, x=>p, y=>b);


-- Alternatively, the components can be declared before they are used
architecture netlist2 of func is
    component And2 is -- "component" is identical to "entity";
        port (x, y: in BIT; z: out BIT);
    end component And2;

    component Or2 is
        port (x, y: in BIT; z: out BIT);
    end component Or2;

    component Not1 is
        port(x: in BIT; z: out BIT);
    end component Not1;

    signal p, q, r: BIT;
begin
    g1: Not1 port map(a, p);
    g2: And2 port map(p, b, q);
    g3: And2 port map(a, c, r);
    g4: Or2 port map(q, r, z);
end architecture netlist2
-- It is assumed that there is only one architecture for each gate.
-- If more than one architecture exists, the last one compiled will be used.
-- This is known as the "default configuration"
