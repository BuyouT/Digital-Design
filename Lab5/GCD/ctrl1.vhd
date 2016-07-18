library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl1 is
  generic (WIDTH : integer := 8);
  port (
	 x_sel,y_sel	: out		std_logic;
	 x_en,y_en   	: out		std_logic;
     output_en  	: out		std_logic;
     done   		: out   	std_logic;
     clk			: in    	std_logic;
     x_lt_y	    	: in		std_logic;
     x_ne_y	        : in    	std_logic;
     go    		    : in    	std_logic);
end ctrl1; 



architecture STR of ctrl1 is  

	type state_type is (A,B,C,D,E,F,G);

	-- A not ready yet
	-- B hold X and update Y  ,x<y
	-- C hold Y and update X  ,x>y
	-- D hold both X and Y    ,x=y because x_ne_y
	-- E load X&Y
	-- F finish state
	signal state : state_type;

begin
	process(clk)
	begin
		if rising_edge(clk) then
			if go = '0' then
				state <= A; 
			else
				case state is
					when A => 
						state <= E; 
					when E|B|C  =>
						state <= G; 
					when D =>	
						state <= F;
					when G =>	
						if (x_ne_y = '1' and x_lt_y = '1') then 
							state <= B;
						elsif (x_ne_y = '1' and x_lt_y = '0') then 
							state <= C;
						elsif (x_ne_y = '0') then 
							state <= D;
						end if;
					 when others => 
						state<=F;
				end case;
			end if;
		end if;
	end process;
	

	process(state)
	begin
		case state is 
			when E => 
				output_en <= '0';
				done <= '0';
				x_en <= '1';
				y_en <= '1';
				x_sel <= '0';
				y_sel <= '0';
			when B => 
				output_en <= '0';
				done <= '0';
				x_en <= '0';
				y_en <= '1';
				y_sel <= '1';
			when C => 
				output_en <= '0';
				done <= '0';
				y_en <= '0';
				x_en <= '1';
				x_sel <= '1';
			when D =>
				output_en <= '1';
				done <= '0';
				x_en <= '0';
				y_en <= '0';
			when F => 
				done <= '1';
			when others =>
				done <= '0';
				x_en <= '0';
				y_en <= '0';
				output_en <= '0';
		end case;
	end process;

end STR;

