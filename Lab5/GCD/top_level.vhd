
library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
        clk50MHz : in  std_logic;
        switch   : in  std_logic_vector(9 downto 0);
        button   : in  std_logic_vector(2 downto 0);
        led0     : out std_logic_vector(6 downto 0);
        led0_dp  : out std_logic;
        led1     : out std_logic_vector(6 downto 0);
        led1_dp  : out std_logic;
        led2     : out std_logic_vector(6 downto 0);
        led2_dp  : out std_logic;
        led3     : out std_logic_vector(6 downto 0);
        led3_dp  : out std_logic);
end top_level;

architecture STR of top_level is

    component decoder7seg
        port (
            input  : in  std_logic_vector(3 downto 0);
            output : out std_logic_vector(6 downto 0));
    end component;

    component gcd
			generic(
				WIDTH : positive := 4);
			port(
				clk	: in std_logic;
				rst    : in  std_logic;
				go     : in  std_logic;
				done   : out std_logic;
				x      : in  std_logic_vector(WIDTH-1 downto 0);
				y      : in  std_logic_vector(WIDTH-1 downto 0);
				output : out std_logic_vector(WIDTH-1 downto 0));
	 end component;
	 
	 component sum_nums
			generic(
				WIDTH : positive := 4);
			port(
				clk	: in std_logic;
				rst    : in  std_logic;
				go     : in  std_logic;
				done   : out std_logic;
				x      : in  std_logic_vector(WIDTH-1 downto 0);
				output : out std_logic_vector(WIDTH-1 downto 0));
	 end component;

    constant C0			: std_logic_vector(3 downto 0) := (others => '0');

	 signal gcd_out,sn_out		: std_logic_vector(3 downto 0);
	 signal done_check,done_check1	: std_logic;
    
begin  -- STR
	
	 U_GCD  : gcd port map(
			clk => clk50MHz,
			rst => button(0),
			go => button(2),
			done => done_check,
			x => switch(9 downto 6),
			y => switch(5 downto 2),
			output => gcd_out);
			
	  U_SN  : sum_nums port map(
			clk => clk50MHz,
			rst => button(0),
			go => button(2),
			done => done_check1,
			x => switch(9 downto 6),
			output => sn_out);

    U_LED3 : decoder7seg port map (
        input  => C0,
        output => led3);

    U_LED2 : decoder7seg port map (
        input  => C0,
        output => led2);

    U_LED1 : decoder7seg port map (
        input  => sn_out,
        output => led1);

    U_LED0 : decoder7seg port map (
        input  => gcd_out,	
        output => led0);

    led3_dp <= '1';
    led2_dp <= '1';
    led1_dp <= done_check1;
    led0_dp <= done_check;

end STR;

configuration top_level_cfg of top_level is
    for STR
        for U_GCD : gcd
            use entity work.gcd(FSMD);  -- change this line for other
                                                  -- architectures 
        end for;
    end for;
end top_level_cfg;
