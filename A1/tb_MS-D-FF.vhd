LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY tb IS

END ENTITY

ARCHITECTURE logic OF tb IS
	
	SIGNAL s_LD, s_CLR, s_CLOCK, s_D : std_logic :='0';
	SIGNAL s_Q, s_nQ 		 : std_logic;

	COMPONENT MS-D-FF
		PORT(	LD, CLR, CLOCK, D : IN std_logic;
			Q, nQ		  : OUT std_logic);
	END COMPONENT;

BEGIN
	dut : MS-DFF
	PORT MAP (	LD => s_LD,
			CLR => s_CLR,
			CLOCK => s_CLOCK,
			D => s_D,
			Q => s_Q,
			nQ => s_nQ);
	PROCESS(CLOCK)

	s_D <= '0' AFTER 0 ns, '1' AFTER 20 ns, '0' AFTER 80 ns;
	s_LD <= '0' AFTER 0 ns, '1' AFTER 40 ns;
	s_CLR <= '0' AFTER 0 ns, '1' AFTER 70 ns, '0' AFTER 80 ns;
	s_CLOCK <= '0' AFTER 0 ns, '1' AFTER 10 ns, '0' AFTER 20 ns, '1' AFTER 30 ns, '0' AFTER 40 ns, '1' AFTER 50 ns, '0' AFTER 60 ns, '1' AFTER 70 ns, '0' AFTER 80 ns, '1' AFTER 90 ns;

END logic;
