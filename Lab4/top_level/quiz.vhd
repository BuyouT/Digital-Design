library ieee;
use ieee.std_logic_1164.all;

entity quiz is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        output : out std_logic_vector(3 downto 0));
end quiz;

architecture BHV of quiz is
	type STATE_TYPE is (STATE0, STATE1, STATE2, STATE3);
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
					output <= "1000";
					next_state <= STATE1;
				when STATE1 =>
					output <= "0100";
					next_state <= STATE2;
				when STATE2 =>
					output <= "0010";
					next_state <= STATE3;
				when STATE3 =>
					output <= "0001";
					next_state <= STATE0;
				when others =>
					null;
			end case;
	end process;
end BHV;