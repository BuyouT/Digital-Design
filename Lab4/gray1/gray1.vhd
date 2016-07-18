library ieee;
use ieee.std_logic_1164.all;

entity gray1 is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        output : out std_logic_vector(3 downto 0));
end gray1;

architecture BHV of gray1 is
	type STATE_TYPE is (STATE0, STATE1, STATE2, STATE3, STATE4, STATE5, STATE6, STATE7, 
								STATE8, STATE9, STATEA, STATEB, STATEC, STATED, STATEE, STATEF);
	signal state : STATE_TYPE;

begin
	process(clk, rst)
	begin
		if rst = '1' then
			state <= (STATE0);
		elsif rising_edge(clk) then
			case state is
				when STATE0 =>
					output <= "0000";
					state <= STATE1;
				when STATE1 =>
					output <= "0001";
					state <= STATE3;
				when STATE2 =>
					output <= "0010";
					state <= STATE6;
				when STATE3 =>
					output <= "0011";
					state <= STATE2;
				when STATE4 =>
					output <= "0100";
					state <= STATEC;
				when STATE5 =>
					output <= "0101";
					state <= STATE4;
				when STATE6 =>
					output <= "0110";
					state <= STATE7;
				when STATE7 =>
					output <= "0111";
					state <= STATE5;
				when STATE8 =>
					output <= "1000";
					state <= STATE0;
				when STATE9 =>
					output <= "1001";
					state <= STATE8;
				when STATEA =>
					output <= "1010";
					state <= STATEB;
				when STATEB =>
					output <= "1011";
					state <= STATE9;
				when STATEC =>
					output <= "1100";
					state <= STATED;
				when STATED =>
					output <= "1101";
					state <= STATEF;
				when STATEE =>
					output <= "1110";
					state <= STATEA;
				when STATEF =>
					output <= "1111";
					state <= STATEE;
				when others =>
					null;
			end case;
		end if;
	end process;
end BHV;