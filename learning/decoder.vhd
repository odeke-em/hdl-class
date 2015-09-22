-- Truth Table for 2-to-4 decoder
-- ----------------------------------------------------
-- |   A1  |  A0   |   Z3   |   Z2   |   Z1   |  Z0   |
-- ----------------------------------------------------
-- |   0   |   0   |    0   |    0   |    0   |   1   |
-- ----------------------------------------------------
-- |   0   |   1   |    0   |    0   |    1   |   0   |
-- ----------------------------------------------------
-- |   1   |   0   |    0   |    1   |    0   |   0   |
-- ----------------------------------------------------
-- |   1   |   1   |    1   |    0   |    0   |   0   |
-- ----------------------------------------------------

-- NATURAL: a predefined subtype with integer values from 0 to the max integer value.
-- range <>: undefined range, so std_logic_vector can be used for a logic vector of any size.

library ieee;
use ieee.std_logic_1164.all;

entity decoder is
    port(a: in std_logic_vector (1 downto 0); -- to
         z: out std_logic_vector (3 downto 0));
