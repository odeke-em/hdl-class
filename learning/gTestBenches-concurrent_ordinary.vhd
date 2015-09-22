entity TestAnd2 is
end entity TestAnd2;

-- For testbench, there are o inputs nor outputs in the entity
-- This is a characteristic of test benches
architecture test1 of TestAnd2 is
    signal a, b, c: BIT;
begin
    -- an instance of the circuit under test
    g1: entity WORK.And2(arch2) port map(x => a, y => b, z => c);


    a <= '0', '1' after 100ns; -- input stimuli
    b <= '0', '1' after 150ns; -- these two are concurrent statements

end architecture test1;
