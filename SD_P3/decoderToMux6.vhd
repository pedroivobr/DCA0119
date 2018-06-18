library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity decoderToMux6 is
	port(
		e5, e4, e3, e2, e1, e0 : in std_logic;
		saida : out std_logic_vector(2 downto 0)
	);
end decoderToMux6;


architecture resultado of decoderToMux6 is
begin
	saida <= "000" when (e5 = '1') and (e4 = '0') and (e4 = '0') and (e3 = '0') and (e2 = '0') and (e1 = '0') and (e0 = '0') else
				"001" when (e5 = '0') and (e4 = '1') and (e4 = '0') and (e3 = '0') and (e2 = '0') and (e1 = '0') and (e0 = '0') else
				"010" when (e5 = '0') and (e4 = '0') and (e4 = '1') and (e3 = '0') and (e2 = '0') and (e1 = '0') and (e0 = '0') else
				"011" when (e5 = '0') and (e4 = '0') and (e4 = '0') and (e3 = '1') and (e2 = '0') and (e1 = '0') and (e0 = '0') else
				"100" when (e5 = '0') and (e4 = '0') and (e4 = '0') and (e3 = '0') and (e2 = '1') and (e1 = '0') and (e0 = '0') else
				"101" when (e5 = '1') and (e4 = '0') and (e4 = '0') and (e3 = '0') and (e2 = '0') and (e1 = '1') and (e0 = '0') else
				"110" when (e5 = '1') and (e4 = '0') and (e4 = '0') and (e3 = '0') and (e2 = '0') and (e1 = '0') and (e0 = '1');
end resultado;