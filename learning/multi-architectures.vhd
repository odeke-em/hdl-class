configuration tester1 of testAnd2 is
    for test1 -- architecture name
        for g1: And2 -- g1: instance name; And2: component name
            use entity WORK.And2(arch3);
            -- it is possible to include generic map and port map here
        end for;
    end for;
end configuration tester1;
