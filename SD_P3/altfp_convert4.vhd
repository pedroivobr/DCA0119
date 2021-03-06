-- megafunction wizard: %ALTFP_CONVERT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: ALTFP_CONVERT 

-- ============================================================
-- File Name: altfp_convert4.vhd
-- Megafunction Name(s):
-- 			ALTFP_CONVERT
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


--altfp_convert CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" OPERATION="INT2FLOAT" ROUNDING="TO_NEAREST" WIDTH_DATA=4 WIDTH_EXP_INPUT=8 WIDTH_EXP_OUTPUT=8 WIDTH_INT=4 WIDTH_MAN_INPUT=23 WIDTH_MAN_OUTPUT=23 WIDTH_RESULT=32 clock dataa result
--VERSION_BEGIN 13.0 cbx_altbarrel_shift 2013:06:12:18:03:43:SJ cbx_altfp_convert 2013:06:12:18:03:43:SJ cbx_altpriority_encoder 2013:06:12:18:03:43:SJ cbx_altsyncram 2013:06:12:18:03:43:SJ cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_abs 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_lpm_decode 2013:06:12:18:03:43:SJ cbx_lpm_divide 2013:06:12:18:03:43:SJ cbx_lpm_mux 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ cbx_stratixiii 2013:06:12:18:03:43:SJ cbx_stratixv 2013:06:12:18:03:43:SJ cbx_util_mgl 2013:06:12:18:03:43:SJ  VERSION_END


--altbarrel_shift CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" PIPELINE=2 SHIFTDIR="LEFT" SHIFTTYPE="LOGICAL" WIDTH=4 WIDTHDIST=2 aclr clk_en clock data distance result
--VERSION_BEGIN 13.0 cbx_altbarrel_shift 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ  VERSION_END

--synthesis_resources = reg 11 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  altfp_convert4_altbarrel_shift_npf IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clk_en	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 distance	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0)
	 ); 
 END altfp_convert4_altbarrel_shift_npf;

 ARCHITECTURE RTL OF altfp_convert4_altbarrel_shift_npf IS

	 SIGNAL	 dir_pipe	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sbit_piper1d	:	STD_LOGIC_VECTOR(3 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sbit_piper2d	:	STD_LOGIC_VECTOR(3 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sel_pipec1r1d	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w58w59w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w54w55w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w81w82w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w77w78w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w50w51w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w73w74w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_sel_w_range45w58w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_sel_w_range45w54w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_sel_w_range69w81w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_sel_w_range69w77w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_dir_w_range42w57w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_dir_w_range67w80w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_sel_w_range45w50w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_sel_w_range69w73w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_sel_w_range45w58w59w60w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_sel_w_range69w81w82w83w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_lg_w_sel_w_range45w58w59w60w61w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_lg_w_sel_w_range69w81w82w83w84w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  dir_w :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  direction_w :	STD_LOGIC;
	 SIGNAL  pad_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  sbit_w :	STD_LOGIC_VECTOR (11 DOWNTO 0);
	 SIGNAL  sel_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  smux_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_w_pad_w_range47w_w_w_sbit_w_range40w_range52w53w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_w_pad_w_range70w_w_w_sbit_w_range63w_range75w76w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_w_w_sbit_w_range40w_range48w_w_pad_w_range47w56w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_w_w_sbit_w_range63w_range71w_w_pad_w_range70w79w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_dir_w_range42w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_dir_w_range67w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_sbit_w_range40w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_sbit_w_range63w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_sel_w_range45w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_sel_w_range69w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_smux_w_range49w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_w_smux_w_range72w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
 BEGIN

	loop0 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w58w59w(i) <= wire_altbarrel_shift5_w_lg_w_sel_w_range45w58w(0) AND wire_altbarrel_shift5_w_w_w_sbit_w_range40w_range48w_w_pad_w_range47w56w(i);
	END GENERATE loop0;
	loop1 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w54w55w(i) <= wire_altbarrel_shift5_w_lg_w_sel_w_range45w54w(0) AND wire_altbarrel_shift5_w_w_pad_w_range47w_w_w_sbit_w_range40w_range52w53w(i);
	END GENERATE loop1;
	loop2 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w81w82w(i) <= wire_altbarrel_shift5_w_lg_w_sel_w_range69w81w(0) AND wire_altbarrel_shift5_w_w_w_sbit_w_range63w_range71w_w_pad_w_range70w79w(i);
	END GENERATE loop2;
	loop3 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w77w78w(i) <= wire_altbarrel_shift5_w_lg_w_sel_w_range69w77w(0) AND wire_altbarrel_shift5_w_w_pad_w_range70w_w_w_sbit_w_range63w_range75w76w(i);
	END GENERATE loop3;
	loop4 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w50w51w(i) <= wire_altbarrel_shift5_w_lg_w_sel_w_range45w50w(0) AND wire_altbarrel_shift5_w_sbit_w_range40w(i);
	END GENERATE loop4;
	loop5 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w73w74w(i) <= wire_altbarrel_shift5_w_lg_w_sel_w_range69w73w(0) AND wire_altbarrel_shift5_w_sbit_w_range63w(i);
	END GENERATE loop5;
	wire_altbarrel_shift5_w_lg_w_sel_w_range45w58w(0) <= wire_altbarrel_shift5_w_sel_w_range45w(0) AND wire_altbarrel_shift5_w_lg_w_dir_w_range42w57w(0);
	wire_altbarrel_shift5_w_lg_w_sel_w_range45w54w(0) <= wire_altbarrel_shift5_w_sel_w_range45w(0) AND wire_altbarrel_shift5_w_dir_w_range42w(0);
	wire_altbarrel_shift5_w_lg_w_sel_w_range69w81w(0) <= wire_altbarrel_shift5_w_sel_w_range69w(0) AND wire_altbarrel_shift5_w_lg_w_dir_w_range67w80w(0);
	wire_altbarrel_shift5_w_lg_w_sel_w_range69w77w(0) <= wire_altbarrel_shift5_w_sel_w_range69w(0) AND wire_altbarrel_shift5_w_dir_w_range67w(0);
	wire_altbarrel_shift5_w_lg_w_dir_w_range42w57w(0) <= NOT wire_altbarrel_shift5_w_dir_w_range42w(0);
	wire_altbarrel_shift5_w_lg_w_dir_w_range67w80w(0) <= NOT wire_altbarrel_shift5_w_dir_w_range67w(0);
	wire_altbarrel_shift5_w_lg_w_sel_w_range45w50w(0) <= NOT wire_altbarrel_shift5_w_sel_w_range45w(0);
	wire_altbarrel_shift5_w_lg_w_sel_w_range69w73w(0) <= NOT wire_altbarrel_shift5_w_sel_w_range69w(0);
	loop6 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_sel_w_range45w58w59w60w(i) <= wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w58w59w(i) OR wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w54w55w(i);
	END GENERATE loop6;
	loop7 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_sel_w_range69w81w82w83w(i) <= wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w81w82w(i) OR wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w77w78w(i);
	END GENERATE loop7;
	loop8 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_lg_w_sel_w_range45w58w59w60w61w(i) <= wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_sel_w_range45w58w59w60w(i) OR wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range45w50w51w(i);
	END GENERATE loop8;
	loop9 : FOR i IN 0 TO 3 GENERATE 
		wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_lg_w_sel_w_range69w81w82w83w84w(i) <= wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_sel_w_range69w81w82w83w(i) OR wire_altbarrel_shift5_w_lg_w_lg_w_sel_w_range69w73w74w(i);
	END GENERATE loop9;
	dir_w <= ( dir_pipe(1 DOWNTO 0) & direction_w);
	direction_w <= '0';
	pad_w <= (OTHERS => '0');
	result <= sbit_w(11 DOWNTO 8);
	sbit_w <= ( sbit_piper2d & sbit_piper1d & data);
	sel_w <= ( sel_pipec1r1d & distance(0));
	smux_w <= ( wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_lg_w_sel_w_range69w81w82w83w84w & wire_altbarrel_shift5_w_lg_w_lg_w_lg_w_lg_w_sel_w_range45w58w59w60w61w);
	wire_altbarrel_shift5_w_w_pad_w_range47w_w_w_sbit_w_range40w_range52w53w <= ( pad_w(0) & sbit_w(3 DOWNTO 1));
	wire_altbarrel_shift5_w_w_pad_w_range70w_w_w_sbit_w_range63w_range75w76w <= ( pad_w(1 DOWNTO 0) & sbit_w(7 DOWNTO 6));
	wire_altbarrel_shift5_w_w_w_sbit_w_range40w_range48w_w_pad_w_range47w56w <= ( sbit_w(2 DOWNTO 0) & pad_w(0));
	wire_altbarrel_shift5_w_w_w_sbit_w_range63w_range71w_w_pad_w_range70w79w <= ( sbit_w(5 DOWNTO 4) & pad_w(1 DOWNTO 0));
	wire_altbarrel_shift5_w_dir_w_range42w(0) <= dir_w(0);
	wire_altbarrel_shift5_w_dir_w_range67w(0) <= dir_w(1);
	wire_altbarrel_shift5_w_sbit_w_range40w <= sbit_w(3 DOWNTO 0);
	wire_altbarrel_shift5_w_sbit_w_range63w <= sbit_w(7 DOWNTO 4);
	wire_altbarrel_shift5_w_sel_w_range45w(0) <= sel_w(0);
	wire_altbarrel_shift5_w_sel_w_range69w(0) <= sel_w(1);
	wire_altbarrel_shift5_w_smux_w_range49w <= smux_w(3 DOWNTO 0);
	wire_altbarrel_shift5_w_smux_w_range72w <= smux_w(7 DOWNTO 4);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dir_pipe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dir_pipe <= ( dir_w(1 DOWNTO 0));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sbit_piper1d <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sbit_piper1d <= wire_altbarrel_shift5_w_smux_w_range49w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sbit_piper2d <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sbit_piper2d <= wire_altbarrel_shift5_w_smux_w_range72w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sel_pipec1r1d <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sel_pipec1r1d <= distance(1);
			END IF;
		END IF;
	END PROCESS;

 END RTL; --altfp_convert4_altbarrel_shift_npf


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" WIDTH=4 WIDTHAD=2 data q
--VERSION_BEGIN 13.0 cbx_altpriority_encoder 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" WIDTH=2 WIDTHAD=1 data q
--VERSION_BEGIN 13.0 cbx_altpriority_encoder 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  altfp_convert4_altpriority_encoder_3v7 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0)
	 ); 
 END altfp_convert4_altpriority_encoder_3v7;

 ARCHITECTURE RTL OF altfp_convert4_altpriority_encoder_3v7 IS

 BEGIN

	q(0) <= ( data(1));

 END RTL; --altfp_convert4_altpriority_encoder_3v7


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" WIDTH=2 WIDTHAD=1 data q zero
--VERSION_BEGIN 13.0 cbx_altpriority_encoder 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  altfp_convert4_altpriority_encoder_3e8 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END altfp_convert4_altpriority_encoder_3e8;

 ARCHITECTURE RTL OF altfp_convert4_altpriority_encoder_3e8 IS

 BEGIN

	q(0) <= ( data(1));
	zero <= (NOT (data(0) OR data(1)));

 END RTL; --altfp_convert4_altpriority_encoder_3e8

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  altfp_convert4_altpriority_encoder_6a6 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0)
	 ); 
 END altfp_convert4_altpriority_encoder_6a6;

 ARCHITECTURE RTL OF altfp_convert4_altpriority_encoder_6a6 IS

	 SIGNAL  wire_altpriority_encoder6_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder7_w_lg_w_lg_zero93w94w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder7_w_lg_zero95w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder7_w_lg_zero93w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder7_w_lg_w_lg_zero95w96w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder7_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder7_zero	:	STD_LOGIC;
	 COMPONENT  altfp_convert4_altpriority_encoder_3v7
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(0 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  altfp_convert4_altpriority_encoder_3e8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(0 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder7_w_lg_zero93w & wire_altpriority_encoder7_w_lg_w_lg_zero95w96w);
	altpriority_encoder6 :  altfp_convert4_altpriority_encoder_3v7
	  PORT MAP ( 
		data => data(1 DOWNTO 0),
		q => wire_altpriority_encoder6_q
	  );
	wire_altpriority_encoder7_w_lg_w_lg_zero93w94w(0) <= wire_altpriority_encoder7_w_lg_zero93w(0) AND wire_altpriority_encoder7_q(0);
	wire_altpriority_encoder7_w_lg_zero95w(0) <= wire_altpriority_encoder7_zero AND wire_altpriority_encoder6_q(0);
	wire_altpriority_encoder7_w_lg_zero93w(0) <= NOT wire_altpriority_encoder7_zero;
	wire_altpriority_encoder7_w_lg_w_lg_zero95w96w(0) <= wire_altpriority_encoder7_w_lg_zero95w(0) OR wire_altpriority_encoder7_w_lg_w_lg_zero93w94w(0);
	altpriority_encoder7 :  altfp_convert4_altpriority_encoder_3e8
	  PORT MAP ( 
		data => data(3 DOWNTO 2),
		q => wire_altpriority_encoder7_q,
		zero => wire_altpriority_encoder7_zero
	  );

 END RTL; --altfp_convert4_altpriority_encoder_6a6

 LIBRARY lpm;
 USE lpm.all;

--synthesis_resources = lpm_add_sub 2 lpm_compare 1 reg 104 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  altfp_convert4_altfp_convert_1qm IS 
	 PORT 
	 ( 
		 clock	:	IN  STD_LOGIC;
		 dataa	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END altfp_convert4_altfp_convert_1qm;

 ARCHITECTURE RTL OF altfp_convert4_altfp_convert_1qm IS

	 SIGNAL  wire_altbarrel_shift5_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altbarrel_shift5_result	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder2_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL	 exponent_bus_pre_reg	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exponent_bus_pre_reg2	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exponent_bus_pre_reg3	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 mag_int_a_reg	:	STD_LOGIC_VECTOR(2 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 mag_int_a_reg2	:	STD_LOGIC_VECTOR(2 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 mantissa_pre_round_reg	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 priority_encoder_reg	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 result_reg	:	STD_LOGIC_VECTOR(31 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_int_a_reg1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_int_a_reg2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_int_a_reg3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_int_a_reg4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_int_a_reg5	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_add_sub1_datab	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_add_sub1_result	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_add_sub3_result	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_cmpr4_w_lg_w_lg_alb21w22w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_cmpr4_w_lg_alb20w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_cmpr4_w_lg_alb21w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_cmpr4_alb	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_lg_max_neg_value_selector17w18w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_sign_int_a5w6w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_w_lg_max_neg_value_selector16w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_sign_int_a4w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_w_lg_max_neg_value_selector17w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_sign_int_a5w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  aclr	:	STD_LOGIC;
	 SIGNAL  bias_value_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  clk_en	:	STD_LOGIC;
	 SIGNAL  const_bias_value_add_width_int_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exceptions_value :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exponent_bus :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exponent_bus_pre :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exponent_output_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exponent_rounded :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exponent_zero_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  int_a :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  int_a_2s :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  invert_int_a :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  leading_zeroes :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  mag_int_a :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  mantissa_bus :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  mantissa_pre_round :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  mantissa_rounded :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  max_neg_value_selector :	STD_LOGIC;
	 SIGNAL  max_neg_value_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  minus_leading_zero :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  prio_mag_int_a :	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  result_w :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  shifted_mag_int_a :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  sign_bus :	STD_LOGIC;
	 SIGNAL  sign_int_a :	STD_LOGIC;
	 SIGNAL  zero_padding_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 COMPONENT  altfp_convert4_altbarrel_shift_npf
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clk_en	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		distance	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		result	:	OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  altfp_convert4_altpriority_encoder_6a6
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  lpm_add_sub
	 GENERIC 
	 (
		LPM_DIRECTION	:	STRING := "DEFAULT";
		LPM_PIPELINE	:	NATURAL := 0;
		LPM_REPRESENTATION	:	STRING := "SIGNED";
		LPM_WIDTH	:	NATURAL;
		lpm_hint	:	STRING := "UNUSED";
		lpm_type	:	STRING := "lpm_add_sub"
	 );
	 PORT
	 ( 
		aclr	:	IN STD_LOGIC := '0';
		add_sub	:	IN STD_LOGIC := '1';
		cin	:	IN STD_LOGIC := 'Z';
		clken	:	IN STD_LOGIC := '1';
		clock	:	IN STD_LOGIC := '0';
		cout	:	OUT STD_LOGIC;
		dataa	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
		datab	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
		overflow	:	OUT STD_LOGIC;
		result	:	OUT STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  lpm_compare
	 GENERIC 
	 (
		LPM_PIPELINE	:	NATURAL := 0;
		LPM_REPRESENTATION	:	STRING := "UNSIGNED";
		LPM_WIDTH	:	NATURAL;
		lpm_hint	:	STRING := "UNUSED";
		lpm_type	:	STRING := "lpm_compare"
	 );
	 PORT
	 ( 
		aclr	:	IN STD_LOGIC := '0';
		aeb	:	OUT STD_LOGIC;
		agb	:	OUT STD_LOGIC;
		ageb	:	OUT STD_LOGIC;
		alb	:	OUT STD_LOGIC;
		aleb	:	OUT STD_LOGIC;
		aneb	:	OUT STD_LOGIC;
		clken	:	IN STD_LOGIC := '1';
		clock	:	IN STD_LOGIC := '0';
		dataa	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
		datab	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0')
	 ); 
	 END COMPONENT;
 BEGIN

	loop10 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_max_neg_value_selector17w18w(i) <= wire_w_lg_max_neg_value_selector17w(0) AND exponent_zero_w(i);
	END GENERATE loop10;
	loop11 : FOR i IN 0 TO 2 GENERATE 
		wire_w_lg_w_lg_sign_int_a5w6w(i) <= wire_w_lg_sign_int_a5w(0) AND int_a(i);
	END GENERATE loop11;
	loop12 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_max_neg_value_selector16w(i) <= max_neg_value_selector AND max_neg_value_w(i);
	END GENERATE loop12;
	loop13 : FOR i IN 0 TO 2 GENERATE 
		wire_w_lg_sign_int_a4w(i) <= sign_int_a AND int_a_2s(i);
	END GENERATE loop13;
	wire_w_lg_max_neg_value_selector17w(0) <= NOT max_neg_value_selector;
	wire_w_lg_sign_int_a5w(0) <= NOT sign_int_a;
	aclr <= '0';
	bias_value_w <= "01111111";
	clk_en <= '1';
	const_bias_value_add_width_int_w <= "10000001";
	exceptions_value <= (wire_w_lg_w_lg_max_neg_value_selector17w18w OR wire_w_lg_max_neg_value_selector16w);
	exponent_bus <= exponent_rounded;
	exponent_bus_pre <= (wire_cmpr4_w_lg_w_lg_alb21w22w OR wire_cmpr4_w_lg_alb20w);
	exponent_output_w <= wire_add_sub3_result;
	exponent_rounded <= exponent_bus_pre_reg;
	exponent_zero_w <= (OTHERS => '0');
	int_a <= dataa(2 DOWNTO 0);
	int_a_2s <= wire_add_sub1_result;
	invert_int_a <= (NOT int_a);
	leading_zeroes <= (NOT priority_encoder_reg);
	mag_int_a <= (wire_w_lg_w_lg_sign_int_a5w6w OR wire_w_lg_sign_int_a4w);
	mantissa_bus <= mantissa_rounded(22 DOWNTO 0);
	mantissa_pre_round <= ( shifted_mag_int_a(2 DOWNTO 0) & "000000000000000000000");
	mantissa_rounded <= mantissa_pre_round_reg;
	max_neg_value_selector <= (wire_cmpr4_alb AND sign_int_a_reg2);
	max_neg_value_w <= "10000010";
	minus_leading_zero <= ( zero_padding_w & leading_zeroes);
	prio_mag_int_a <= ( mag_int_a_reg & "1");
	result <= result_reg;
	result_w <= ( sign_bus & exponent_bus & mantissa_bus);
	shifted_mag_int_a <= wire_altbarrel_shift5_result(2 DOWNTO 0);
	sign_bus <= sign_int_a_reg5;
	sign_int_a <= dataa(3);
	zero_padding_w <= (OTHERS => '0');
	wire_altbarrel_shift5_data <= ( "0" & mag_int_a_reg2);
	altbarrel_shift5 :  altfp_convert4_altbarrel_shift_npf
	  PORT MAP ( 
		aclr => aclr,
		clk_en => clk_en,
		clock => clock,
		data => wire_altbarrel_shift5_data,
		distance => leading_zeroes,
		result => wire_altbarrel_shift5_result
	  );
	altpriority_encoder2 :  altfp_convert4_altpriority_encoder_6a6
	  PORT MAP ( 
		data => prio_mag_int_a,
		q => wire_altpriority_encoder2_q
	  );
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exponent_bus_pre_reg <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exponent_bus_pre_reg <= exponent_bus_pre_reg2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exponent_bus_pre_reg2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exponent_bus_pre_reg2 <= exponent_bus_pre_reg3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exponent_bus_pre_reg3 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exponent_bus_pre_reg3 <= exponent_bus_pre;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN mag_int_a_reg <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN mag_int_a_reg <= mag_int_a;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN mag_int_a_reg2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN mag_int_a_reg2 <= mag_int_a_reg;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN mantissa_pre_round_reg <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN mantissa_pre_round_reg <= mantissa_pre_round;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN priority_encoder_reg <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN priority_encoder_reg <= wire_altpriority_encoder2_q;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN result_reg <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN result_reg <= result_w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_int_a_reg1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_int_a_reg1 <= sign_int_a;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_int_a_reg2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_int_a_reg2 <= sign_int_a_reg1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_int_a_reg3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_int_a_reg3 <= sign_int_a_reg2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_int_a_reg4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_int_a_reg4 <= sign_int_a_reg3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_int_a_reg5 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_int_a_reg5 <= sign_int_a_reg4;
			END IF;
		END IF;
	END PROCESS;
	wire_add_sub1_datab <= "001";
	add_sub1 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_WIDTH => 3,
		lpm_hint => "ONE_INPUT_IS_CONSTANT=YES"
	  )
	  PORT MAP ( 
		dataa => invert_int_a,
		datab => wire_add_sub1_datab,
		result => wire_add_sub1_result
	  );
	add_sub3 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_WIDTH => 8,
		lpm_hint => "ONE_INPUT_IS_CONSTANT=YES"
	  )
	  PORT MAP ( 
		dataa => const_bias_value_add_width_int_w,
		datab => minus_leading_zero,
		result => wire_add_sub3_result
	  );
	loop14 : FOR i IN 0 TO 7 GENERATE 
		wire_cmpr4_w_lg_w_lg_alb21w22w(i) <= wire_cmpr4_w_lg_alb21w(0) AND exponent_output_w(i);
	END GENERATE loop14;
	loop15 : FOR i IN 0 TO 7 GENERATE 
		wire_cmpr4_w_lg_alb20w(i) <= wire_cmpr4_alb AND exceptions_value(i);
	END GENERATE loop15;
	wire_cmpr4_w_lg_alb21w(0) <= NOT wire_cmpr4_alb;
	cmpr4 :  lpm_compare
	  GENERIC MAP (
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 8
	  )
	  PORT MAP ( 
		alb => wire_cmpr4_alb,
		dataa => exponent_output_w,
		datab => bias_value_w
	  );

 END RTL; --altfp_convert4_altfp_convert_1qm
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY altfp_convert4 IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END altfp_convert4;


ARCHITECTURE RTL OF altfp_convert4 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT altfp_convert4_altfp_convert_1qm
	PORT (
			clock	: IN STD_LOGIC ;
			dataa	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(31 DOWNTO 0);

	altfp_convert4_altfp_convert_1qm_component : altfp_convert4_altfp_convert_1qm
	PORT MAP (
		clock => clock,
		dataa => dataa,
		result => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altfp_convert"
-- Retrieval info: CONSTANT: OPERATION STRING "INT2FLOAT"
-- Retrieval info: CONSTANT: ROUNDING STRING "TO_NEAREST"
-- Retrieval info: CONSTANT: WIDTH_DATA NUMERIC "4"
-- Retrieval info: CONSTANT: WIDTH_EXP_INPUT NUMERIC "8"
-- Retrieval info: CONSTANT: WIDTH_EXP_OUTPUT NUMERIC "8"
-- Retrieval info: CONSTANT: WIDTH_INT NUMERIC "4"
-- Retrieval info: CONSTANT: WIDTH_MAN_INPUT NUMERIC "23"
-- Retrieval info: CONSTANT: WIDTH_MAN_OUTPUT NUMERIC "23"
-- Retrieval info: CONSTANT: WIDTH_RESULT NUMERIC "32"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: USED_PORT: dataa 0 0 4 0 INPUT NODEFVAL "dataa[3..0]"
-- Retrieval info: CONNECT: @dataa 0 0 4 0 dataa 0 0 4 0
-- Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
-- Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL altfp_convert4.vhd TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altfp_convert4.qip TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altfp_convert4.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altfp_convert4_inst.vhd TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altfp_convert4.inc TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altfp_convert4.cmp TRUE TRUE
-- Retrieval info: LIB_FILE: lpm
