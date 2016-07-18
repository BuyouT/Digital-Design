library ieee;
use ieee.std_logic_1164.all;

entity gray2 is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        output : out std_logic_vector(3 downto 0));
end gray2;

architecture BHV of gray2 is
	type STATE_TYPE is (STATE0, STATE1, STATE2, STATE3, STATE4, STATE5, STATE6, STATE7, 
								STATE8, STATE9, STATEA, STATEB, STATEC, STATED, STATEE, STATEF);
	signal state, next_state : STATE_TYPE;
begin

	process (rst, clk)
	begin
		if rst = '1' then
			state <= STATE0;
		elsif rising_edge(clk) then
			state <= next_state;
		end if;
	end process;
	
	process (state)
	begin
		case state is
				when STATE0 =>
					output <= "0000";
					next_state <= STATE1;
				when STATE1 =>
					output <= "0001";
					next_state <= STATE3;
				when STATE2 =>
					output <= "0010";
					next_state <= STATE6;
				when STATE3 =>
					output <= "0011";
					next_state <= STATE2;
				when STATE4 =>
					output <= "0100";
					next_state <= STATEC;
				when STATE5 =>
					output <= "0101";
					next_state <= STATE4;
				when STATE6 =>
					output <= "0110";
					next_state <= STATE7;
				when STATE7 =>
					output <= "0111";
					next_state <= STATE5;
				when STATE8 =>
					output <= "1000";
					next_state <= STATE0;
				when STATE9 =>
					output <= "1001";
					next_state <= STATE8;
				when STATEA =>
					output <= "1010";
					next_state <= STATEB;
				when STATEB =>
					output <= "1011";
					next_state <= STATE9;
				when STATEC =>
					output <= "1100";
					next_state <= STATED;
				when STATED =>
					output <= "1101";
					next_state <= STATEF;
				when STATEE =>
					output <= "1110";
					next_state <= STATEA;
				when STATEF =>
					output <= "1111";
					next_state <= STATEE;
				when others =>
					null;
			end case;
	end process;
end BHV;