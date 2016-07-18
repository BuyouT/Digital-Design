library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity alu_ns is 
	generic ( 
		WIDTH : positive := 16 
	); 
	port ( 
		input1 : in std_logic_vector(WIDTH-1 downto 0); 
		input2 : in std_logic_vector(WIDTH-1 downto 0); 
		sel : in std_logic_vector(3 downto 0); 
		output : out std_logic_vector(WIDTH-1 downto 0); 
		overflow : out std_logic 
	); 
end alu_ns;

architecture BHV of alu_ns is
begin
	process(input1, input2, sel)
		variable temp : std_logic_vector(width downto 0);
		variable temp_mult : std_logic_vector(width*2-1 downto 0);
		variable outSwap : std_logic_vector(width-1 downto 0);
		variable intemp : integer := width-1;
	begin
		overflow <= '0';
		case sel is
			--add
			when "0000" =>
				temp := std_logic_vector(resize(unsigned(input1),width+1) + 
										resize(unsigned(input2),width+1));
				output <= temp(width-1 downto 0);
				overflow <= temp(width);
			--sub
			when "0001" =>
				temp := std_logic_vector(resize(unsigned(input1),width+1) - 
										resize(unsigned(input2),width+1));
				output <= temp(width-1 downto 0);
			--mult
			when "0010" => 
				temp_mult := std_logic_vector(unsigned(input1)*unsigned(input2));
				output <= temp_mult(width-1 downto 0);
				for i in 2*width-1 downto width loop
					if temp_mult (i) = '1' then					
						overflow <= '1'; -- if any of the temp_mult(2*width-1 downto width) are '1', then overflow is '1'
						exit;
					else 
						overflow <= '0';
					end if;
				end loop;
			--and
			when "0011" =>
				output <= input1 and input2;
			--or
			when "0100" =>
				output <= input1 or input2;
			--xor
			when "0101" =>
				output <= input1 xor input2;
			--nor
			when "0110" =>
				output <= input1 nor input2;
			--not
			when "0111" =>
				output <= not input1;
			--shift left
			when "1000" =>
				temp := std_logic_vector(resize(shift_left(unsigned(input1),1),width+1));
				output <= temp(width-1 downto 0);
				if input1(width-1) = '1' then
					overflow <= '1';
				end if;
				--output <= input1(width-2 downto 0) & "0";
				--overflow <= input1(width-1);
			--shift right
			when "1001" =>
				temp := std_logic_vector(resize(shift_right(unsigned(input1),1), width+1));
				output <= temp(width-1 downto 0);
				--output <= "0" & input1(width-1 downto );
			--Swap
			when "1010" =>
				if width mod 2 = 0 then
					for i in 0 to width/2-1 loop
						outSwap(i) := input1(WIDTH/2+i);
						outSwap(WIDTH/2+i) := input1(i);
					end loop;
						output <= std_logic_vector(outSwap);
				else 
					for i in 0 to width/2-1 loop
						outSwap(i) := input1(WIDTH/2+i+1);
						outSwap(WIDTH/2+i+1) := input1(i);
					end loop;
					outSwap((WIDTH-1)/2) := input1((WIDTH-1)/2);
					output<=std_logic_vector(outSwap);
				end if;
			--reverse
			when "1011" =>
				for i in 0 to width-1 loop
					output(i) <= input1(width-1-i);
				end loop;
			--interleave
			when "1100" =>
				for i in width-1 downto width/2 loop
					output(intemp) <= input1(i);
					intemp := intemp-1;
					output(intemp) <= input2(i);
					intemp := intemp-1;
				end loop;
			when others =>
				output <= (others => '0');
				overflow <= '0';
		end case;
	end process;
end BHV;