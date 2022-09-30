library ieee;
use ieee.std_logic_1164.all;

entity PortaAnd3Entradas is
port(
	A, B, C: in bit;
	S1: out bit
);
end PortaAnd3Entradas;

architecture main of PortaAnd3Entradas is
begin
	S1 <= A and B and C;
end architecture main;