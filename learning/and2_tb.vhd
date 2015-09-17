architecture test1 of TestAnd2 is
    signal a, b, c: BIT;
begin
    g1: entity WORK.And2(arch2) port map(x=>a, y=>b, z=>c);
    -- an instance of the circuit under test

    a <= '0', '1' after 100 ns; -- input stimuli
    b <= '0', '1' after 150 ns; -- these two are concurrent statements
end architecture test1;
