library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity gray_tb is
end gray_tb;

architecture behavior of gray_tb is

  component gray1
    port( clk      : in  std_logic;
          rst      : in  std_logic;
          output   : out std_logic_vector(3 downto 0));
  end component;

  --Inputs
  signal clk : std_logic                     := '0';
  signal rst : std_logic                     := '1';

  --Outputs
  signal output : std_logic_vector(3 downto 0);

begin

  uut : gray1
    port map(clk, rst, output);

  -- toggle clock
  clk <= not clk after 50 ns;

  -- process to test different inputs
  process
  begin

    -- reset circuit  
    rst <= '1';
    wait for 200 ns;
    rst <= '0';
    wait until clk'event and clk = '1';
    U_STATE : for i in 0 to 18 loop
        wait until clk'event and clk = '1';
    end loop ; -- U_STATE  
    wait;
  end process;

end;
