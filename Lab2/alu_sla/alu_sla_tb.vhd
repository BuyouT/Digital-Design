library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu_ns_tb is
end alu_ns_tb;

architecture TB of alu_ns_tb is

    component alu_sla

        generic (
            WIDTH : positive := 16
            );
        port (
            input1   : in  std_logic_vector(WIDTH-1 downto 0);
            input2   : in  std_logic_vector(WIDTH-1 downto 0);
            sel      : in  std_logic_vector(3 downto 0);
            output   : out std_logic_vector(WIDTH-1 downto 0);
            overflow : out std_logic
            );

    end component;

    constant WIDTH  : positive                           := 8;
    signal input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal sel      : std_logic_vector(3 downto 0)       := (others => '0');
    signal output   : std_logic_vector(WIDTH-1 downto 0);
    signal overflow : std_logic;

begin  -- TB

    UUT : alu_sla
        generic map (WIDTH => WIDTH)
        port map (
            input1   => input1,
            input2   => input2,
            sel      => sel,
            output   => output,
            overflow => overflow);

    process
    begin

        -- test 2+6 (no overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(2, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(8, output'length)) report "Error : 2+6 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 2+8" severity warning;

        -- test 250+50 (with overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(250, input1'length);
        input2 <= conv_std_logic_vector(50, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(300, output'length)) report "Error : 250+50 = " & integer'image(conv_integer(output)) & " instead of 44" severity warning;
        assert(overflow = '1') report "Error                                     : overflow incorrect for 250+50" severity warning;

        -- test 5*6
        sel    <= "0010";
        input1 <= conv_std_logic_vector(5, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(30, output'length)) report "Error : 5*6 = " & integer'image(conv_integer(output)) & " instead of 30" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 5*6" severity warning;

        -- test 64*64
        sel    <= "0010";
        input1 <= conv_std_logic_vector(64, input1'length);
        input2 <= conv_std_logic_vector(64, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4096, output'length)) report "Error : 64*64 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(overflow = '1') report "Error                                      : overflow incorrect for 64*64" severity warning;

        -- add many more tests
		  -- bitwise and for 10101001
		  --             for 01010001
		  sel    <= "0011";
		  input1 <= conv_std_logic_vector(169, input1'length);
		  input2 <= conv_std_logic_vector(81, input2'length);
		  wait for 40 ns;
		  assert(output = conv_std_logic_vector(1, output'length)) report "Error  : bitwise AND is wrong" severity warning;
		  assert(overflow = '0') report "Error                                    : overflow incorrect" severity warning;
		  
		  -- test 234-94
		  sel    <= "0001";
		  input1 <= conv_std_logic_vector(234, input1'length);
		  input2 <= conv_std_logic_vector(94, input2'length);
	  	  wait for 40 ns;
		  assert(output = conv_std_logic_vector(140, output'length)) report "Error : 234-94 = " & integer'image(conv_integer(output)) & " instead of 140" severity warning;
		  assert(overflow = '0') report "Error                                      : overflow incorrect for 234-94" severity warning;

		  -- test reverse bits of the number 11101111
		  sel    <= "1011";
		  input1 <= conv_std_logic_vector(239, input1'length);
		  input2 <= conv_std_logic_vector(45, input2'length);
		  wait for 40 ns;
		  assert(output = conv_std_logic_vector(247, output'length)) report "Error : reverse of bits 11101111 is wrong" severity warning;
		  assert(overflow = '0') report "Error                                     : re overflow incorrect" severity warning;

		  -- shift left for 10101000
		  --                01010000
		  sel    <= "1000";
		  input1 <= conv_std_logic_vector(168, input1'length);
		  input2 <= conv_std_logic_vector(45, input2'length);
		  wait for 40 ns;
		  assert(output = conv_std_logic_vector(80, output'length)) report "Error  : shift left of bits 10101000 is wrong" severity warning;
		  assert(overflow = '1') report "Error                                     : sl overflow incorrect" severity warning;

		  -- shift right for 10101000
		  --                 01010100
		  sel    <= "1001";
		  input1 <= conv_std_logic_vector(168, input1'length);
		  input2 <= conv_std_logic_vector(45, input2'length);
		  wait for 40 ns;
		  assert(output = conv_std_logic_vector(84, output'length)) report "Error  : shift right of bits 10101000 is wrong" severity warning;
		  assert(overflow = '0') report "Error                                     : sr overflow incorrect" severity warning;
			 

		  -- swap the bits of 10101000
		  sel    <= "1010";
		  input1 <= conv_std_logic_vector(168, input1'length);
		  input2 <= conv_std_logic_vector(45, input2'length);
		  wait for 40 ns;
		  assert(output = conv_std_logic_vector(138, output'length)) report "Error : swap of bits 10101000 is wrong" severity warning;
		  assert(overflow = '0') report "Error                                     : swap overflow incorrect" severity warning;
			
			-- reverse the bits of 11110000
		  sel    <= "1011";
		  input1 <= conv_std_logic_vector(240, input1'length);
		  input2 <= conv_std_logic_vector(45, input2'length);
		  wait for 40 ns;
		  assert(output = conv_std_logic_vector(15, output'length)) report "Error : reverse of bits 11110000 is wrong" severity warning;
		  assert(overflow = '0') report "Error                                     : re overflow incorrect" severity warning;
			
		  REPORT "SIMULATION FINISHED!";

        wait;

    end process;



end TB;
