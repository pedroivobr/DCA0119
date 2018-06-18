library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;	

entity comparador3 is
	generic(n : integer := 0);
	port(
		a, b, c : in std_logic_vector(n-1 downto 0);
		resultado1 : out std_logic;
		resultado2 : out std_logic
	);
end comparador3;

architecture op of comparador3 is
begin
	resultado1 <= '1' when (b >= a) and (b < c) else '0';
	resultado2 <= '1' when (b >= a) and (b <= c) else '0';
end op;