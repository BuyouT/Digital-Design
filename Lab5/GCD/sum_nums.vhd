library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sum_nums is
    generic (
        WIDTH : positive := 8);
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        go     : in  std_logic;
        done   : out std_logic;
        x      : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0));
end sum_nums;

architecture logic of sum_nums is
type state_type is (state0, state1, state2, state3, state4);
	signal state	: state_type;
	
begin  -- FSMD
	process(rst, clk, go)
		variable tempX : unsigned(WIDTH-1 downto 0);
		variable multTemp : unsigned(2*WIDTH-1 downto 0);
	begin
		state <= state;
		if rst = '1' then 
			state <= state0;
			output <= (others => '0');
			tempX := (others => '0');
			done <= '0';
		elsif rising_edge(clk) then
			case state is
				when state0 =>
					if go = '1' then
						state <= state1;
						done <= '0';	
					end if;
				when state1 =>
					tempX := unsigned(x);
					state <= state2;
				when state2 =>
					multTemp := (tempX)*(tempX+1)/2;
					state <= state3;
				when state3 =>
					output <= std_logic_vector(multTemp(width-1 downto 0));
					done <= '1';
					state <= state4;
				when state4 =>
					if go = '0' then
						state <= state0;
					end if;
				when others =>
				null;
			end case;
		end if;
	end process;
end logic;