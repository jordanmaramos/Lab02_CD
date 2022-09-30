library ieee;
use ieee.std_logic_1164.all;

entity PortaAnd is
port(
	A3, B3: in bit;
	S5: out bit
);
end PortaAnd;

architecture main of PortaAnd is
begin
	S5 <= A3 and B3;
end architecture main;