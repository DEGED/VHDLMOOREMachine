--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : CircuitoVojabes.vhf
-- /___/   /\     Timestamp : 11/19/2020 17:49:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/prestamo/Desktop/Nueva carpeta/ControlServoMotor/LabSemana15/CircuitoVojabes.vhf" -w "C:/Users/prestamo/Desktop/Nueva carpeta/ControlServoMotor/LabSemana15/CircuitoVojabes.sch"
--Design Name: CircuitoVojabes
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTC_MXILINX_CircuitoVojabes is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTC_MXILINX_CircuitoVojabes;

architecture BEHAVIORAL of FTC_MXILINX_CircuitoVojabes is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDC
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDC
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>CLR,
                D=>TQ,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CircuitoVojabes is
   port ( C       : in    std_logic; 
          CLK     : in    std_logic; 
          D       : in    std_logic; 
          CA      : out   std_logic; 
          ESTADOS : out   std_logic_vector (2 downto 0); 
          P       : out   std_logic);
end CircuitoVojabes;

architecture BEHAVIORAL of CircuitoVojabes is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_6  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_19 : std_logic;
   component debounce
      port ( D_IN  : in    std_logic; 
             clock : in    std_logic; 
             reset : in    std_logic; 
             Q_OUT : out   std_logic);
   end component;
   
   component clk_div
      port ( clock_50Mhz  : in    std_logic; 
             clock_1MHz   : out   std_logic; 
             clock_100KHz : out   std_logic; 
             clock_10KHz  : out   std_logic; 
             clock_1KHz   : out   std_logic; 
             clock_100Hz  : out   std_logic; 
             clock_10Hz   : out   std_logic; 
             clock_1Hz    : out   std_logic);
   end component;
   
   component FTC_MXILINX_CircuitoVojabes
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component MOORE
      port ( C       : in    std_logic; 
             D       : in    std_logic; 
             CLK     : in    std_logic; 
             RST     : in    std_logic; 
             P       : out   std_logic; 
             Ca      : out   std_logic; 
             ESTADOS : out   std_logic_vector (2 downto 0));
   end component;
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_0";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_1";
begin
   XLXI_1 : debounce
      port map (clock=>CLK,
                D_IN=>C,
                reset=>XLXN_6,
                Q_OUT=>XLXN_16);
   
   XLXI_2 : debounce
      port map (clock=>CLK,
                D_IN=>D,
                reset=>XLXN_6,
                Q_OUT=>XLXN_15);
   
   XLXI_3 : clk_div
      port map (clock_50Mhz=>CLK,
                clock_1Hz=>open,
                clock_1KHz=>open,
                clock_1MHz=>open,
                clock_10Hz=>open,
                clock_10KHz=>open,
                clock_100Hz=>XLXN_19,
                clock_100KHz=>open);
   
   XLXI_4 : FTC_MXILINX_CircuitoVojabes
      port map (C=>XLXN_19,
                CLR=>XLXN_8,
                T=>XLXN_9,
                Q=>XLXN_12);
   
   XLXI_5 : FTC_MXILINX_CircuitoVojabes
      port map (C=>XLXN_12,
                CLR=>XLXN_11,
                T=>XLXN_10,
                Q=>XLXN_14);
   
   XLXI_6 : GND
      port map (G=>XLXN_6);
   
   XLXI_7 : GND
      port map (G=>XLXN_8);
   
   XLXI_8 : GND
      port map (G=>XLXN_11);
   
   XLXI_9 : VCC
      port map (P=>XLXN_9);
   
   XLXI_10 : VCC
      port map (P=>XLXN_10);
   
   XLXI_11 : MOORE
      port map (C=>XLXN_16,
                CLK=>XLXN_14,
                D=>XLXN_15,
                RST=>XLXN_13,
                Ca=>CA,
                ESTADOS(2 downto 0)=>ESTADOS(2 downto 0),
                P=>P);
   
   XLXI_12 : GND
      port map (G=>XLXN_13);
   
end BEHAVIORAL;


