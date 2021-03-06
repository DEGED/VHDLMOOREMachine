library ieee;
use ieee.std_logic_1164.all;

ENTITY MOORE IS
     PORT(
	  C,D,CLK,RST: IN STD_LOGIC;
     P,Ca: OUT STD_LOGIC;
	  ESTADOS: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
	  ); 
	  END MOORE;
	  
ARCHITECTURE FSM OF MOORE IS

SUBTYPE STATE_TYPE IS STD_LOGIC_VECTOR (2 DOWNTO 0);

SIGNAL STATE : STATE_TYPE;
CONSTANT S0: STATE_TYPE:="000";
CONSTANT S100: STATE_TYPE:="001";
CONSTANT S200: STATE_TYPE:="010";
CONSTANT S300: STATE_TYPE:="011";
CONSTANT S400: STATE_TYPE:="100";


SIGNAL CURRENT_STATE, NEXT_STATE : STATE_TYPE;

BEGIN
FF: PROCESS (CLK, RST) BEGIN
IF (RST='1') THEN
 CURRENT_STATE <= S0;
 
 ELSE 
 IF (CLK'EVENT AND CLK='1') THEN
 CURRENT_STATE<= NEXT_STATE;
 END IF; 
  END IF; 
 END PROCESS FF;

estadosPro: PROCESS (CLK, RST) BEGIN
 ESTADOS <= CURRENT_STATE;
END PROCESS estadosPro;


LOGIC: PROCESS (C,D,CURRENT_STATE) 
BEGIN
CASE CURRENT_STATE IS
WHEN S0=> 
  P <= '0';
  Ca<= '0';
  IF (C='0' and D='1') THEN
		NEXT_STATE <=S200;
  ELSIF (C='1' and D='0') THEN
		NEXT_STATE <=S100;
  ELSE
	NEXT_STATE <= S0;
END IF;


WHEN S100=> 
	P <= '0';
  Ca<= '0';
  IF (C='0' and D='1') THEN
		NEXT_STATE <=S300;
  ELSIF (C='1' and D='0') THEN
		NEXT_STATE <=S200;
  ELSE
  NEXT_STATE <= S100;
 END IF;
WHEN S200=> 
	P <= '0';
  Ca<= '0';
  IF (C='0' and D='1') THEN
		NEXT_STATE <=S400;
  ELSIF (C='1' and D='0') THEN
		NEXT_STATE <=S300;
  ELSE
	NEXT_STATE <= S200;
  END IF;
WHEN S300=> 
  P <= '1';
  Ca<= '0';
  NEXT_STATE <= S0;

WHEN S400=> 
  P <= '1';
  Ca<= '1';
  NEXT_STATE <= S0;
  
WHEN OTHERS =>
--  CURRENT_STATE <= S0;
END CASE;
END PROCESS LOGIC;
END FSM ;