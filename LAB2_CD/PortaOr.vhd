library ieee;
use ieee.std_logic_1164.all;

entity PortaOr is
port(
	A1, B1: in bit;
	S3: out bit
);
end PortaOr;

architecture main of PortaOr is
begin
	S3 <= A1 or B1;
end architecture main;