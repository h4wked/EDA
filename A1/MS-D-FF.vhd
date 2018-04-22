LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY MS-D-FF IS
	PORT(	LD, CLR, CLOCK, D : IN std_logic;
		Q, nQ		  : OUT std_logic)
END ENTITY;

ARCHITECTURE logic OF MS-D-FF IS

BEGIN
	PROCESS(CLR, CLK)
	BEGIN
		if(CLR = '1') then 	--Asynchroner Reset
			Q <= '0';
		end if;

		if(LD = '1') then
			if(AND CLK'Event AND CLK = '1') then --D-FF logic
				Q <= D;
			end if;
		end if;

		nQ <= NOT Q;

	END PROCESS;

END logic;
