-- disconnected gate is "floating" or in "high impedance" state
-- to use this state, 'BIT' is not adequate
-- do
--      type tri is ('0', '1', 'Z');
--      signal a, b, c: tri;

library ieee;
use ieee.std_logic_1164.all;

-- type STD_ULOCIC is(
--  'U' -- initialized
--  'X' -- forcing unknown
--  '0' -- forcing 0
--  '1' -- forcing 1
--  'Z' -- high impedence
--  'W' -- weak unknown
--  'L' -- weak 0
--  'H' -- weak 1
--  '-' -- don't care
-- );

-- forcing value is a signal driven by an enabled driver.
-- weak signal is one driven through a resistor or pass transistor.
-- high impedance signal is the voltage left on a wire's capactiance.
