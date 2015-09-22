entity TestAnd2
end entity TestAnd2

architecture test2 of TestAnd2 is
    signal a, b, c: BIT;
begin
    g1: entity WORK.And2(arch2) port map (x => a, y => b, z => c);

    process is
    begin
        a <= '0';
        b <= '0';

        wait for 100ns;

        a <= '1';

        wait for 150ns;

        b <= '1';

        wait; -- Suspend the process forever
    end process;
end architecture test2;

-- A process without "wait" and without sensitivity list will run forever at time 0;
-- process(a) is: (a) a sensitivity list;
-- The process is evaluated only when the signals in the sensitivity list change.
-- A process can have a sensitivity list or "wait" statements, but not both (and not neither).
