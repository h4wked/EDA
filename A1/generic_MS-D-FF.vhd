LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY generic_MS-D-FF IS
	GENERIC( n : integer := 8);

	PORT(	LD, CLR, CLOCK  : IN std_logic;
		D 		: IN std_logic_vector(n-1 DOWNTO 0);
		Q, nQ		: OUT std_logic_vector(n-1 DOWNTO 0)
	);
END ENTITY;	

ARCHITECTURE

	COMPONENT MS-D-FF IS
		PORT(	LD, CLR, CLOCK, D : IN std_logic;
			Q, nQ		  : OUT std_logic);
	END COMPONENT;

BEGIN
	MS-D-FF_Gen : FOR i IN 0 TO n-1 GENERATE

		nMS-D-FF : MS-D-FF
		PORT MAP ( 	LD => LD,
				CLR => CLR,
				CLOCK => CLOCK,
				D => D(n),
				Q => Q(n),
				nQ => nQ(n);
		);

	END GENERATE;
	
END ARCHITECTURE;
