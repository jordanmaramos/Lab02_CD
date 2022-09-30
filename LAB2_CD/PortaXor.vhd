library ieee;
use ieee.std_logic_1164.all;

entity PortaXor is
port(
	A2, B2: in bit;
	S4: out bit
);
end PortaXor;

architecture main of PortaXor is
begin
	S4 <= A2 xor B2;
end architecture main;