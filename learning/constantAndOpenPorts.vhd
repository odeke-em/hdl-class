-- reconfigurable gate 3 inputs, 2 outputs, invert determines
--  AND or OR or NAND, or NOR
entity reconfig is
    -- Outputs can be left unconnected, but inputs may be left open only if
    -- a default value has been specified in the entity or component declaration
    port (x, y, invert: in BIT := '0'; a, o: out BIT);
end entity reconfig;

architecture arch of reconfig is
begin
    a <= (y and (x xor invert)) or (invert and not y);
    o <= (not x and (y xor invert)) or (x and not invert);
end architecture arch;

-- Two signal assignments occur concurrently, not sequentially

-- To use it as an AND gate, the "invert" is set to "0" and output "o"
-- is unconnected, by "open"
u0: entity WORK.reconfig(arch) port map(x, y, '0', a, open)

-- After configuring inputs to be left open
u0: entity WORK.reconfig(arch) port map(x, y, open, a, open);
