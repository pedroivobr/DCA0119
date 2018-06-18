-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Jun 15 16:40:23 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY blocoA IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		entrada :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		saida :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END blocoA;

ARCHITECTURE bdf_type OF blocoA IS 

COMPONENT lpm_constant1
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT altfp_convert0
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT altfp_mult0
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_inst : lpm_constant1
PORT MAP(		 result => SYNTHESIZED_WIRE_0);


b2v_inst4 : altfp_convert0
PORT MAP(clock => clock,
		 dataa => entrada,
		 result => SYNTHESIZED_WIRE_1);


b2v_inst5 : altfp_mult0
PORT MAP(clock => clock,
		 dataa => SYNTHESIZED_WIRE_0,
		 datab => SYNTHESIZED_WIRE_1,
		 result => saida);


END bdf_type;