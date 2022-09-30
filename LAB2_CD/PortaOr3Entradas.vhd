library ieee;
use ieee.std_logic_1164.all;

entity PortaOr3Entradas is
port(
	A4, B4, C4: in bit;
	S6: out bit
);
end PortaOr3Entradas;

architecture main of PortaOr3Entradas is
begin
	S6 <= A4 or B4 or C4;
end architecture main;