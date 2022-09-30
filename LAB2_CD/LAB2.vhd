library ieee;
use ieee.std_logic_1164.all;


entity LAB2 is
port(
	A, B, C: in bit;
	S1, S2: out bit
);
end LAB2;


architecture main of LAB2 is

component PortaOr is 
port (
	A1, B1: in bit;
	S3: out bit
);
end component;

component PortaXor is 
port (
	A2, B2: in bit;
	S4: out bit
);
end component;

component PortaAnd is 
port (
	A3, B3: in bit;
	S5: out bit
);
end component;

component PortaOr3Entradas is 
port (
	A4, B4, C4: in bit;
	S6: out bit
);
end component;

signal AB: bit;
signal BC: bit;
signal AC: bit;
signal XBC: bit;

begin
	----------------- S1 -----------------
	u1: PortaAnd port map(A3 => A, B3 => B, S5 => AB);
	u2: PortaAnd port map(A3 => B, B3 => C, S5 => BC);
	u3: PortaAnd port map(A3 => A, B3 => C, S5 => AC);
	u4: PortaOr3Entradas port map(A4 => AB, B4 => BC, C4 => AC, S6 => S1);
	
	----------------- S2 -----------------
	u5: PortaXor port map(A2 => B, B2 => C, S4 => XBC);
	u6: PortaOr port map(A1 => AC, B1 => XBC, S3 => S2);
	
end architecture main;






