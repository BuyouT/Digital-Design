library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;

entity VGA_sync_gen  is
  port (
  rst				: in 	std_logic;
  clock_input 	: in 	std_logic;
  Hcount      	: out std_logic_vector(COUNT_WIDTH-1 downto 0);
  Vcount	 		: out std_logic_vector(COUNT_WIDTH-1 downto 0);
  Horiz_Sync  	: out std_logic; 
  Vert_Sync   	: out std_logic;
  Video_On    	: out std_logic);
end VGA_sync_gen;




architecture behv of VGA_sync_gen  is
	signal tempHcount  :  unsigned(COUNT_WIDTH-1 downto 0);
	signal tempVcount  :  unsigned(COUNT_WIDTH-1 downto 0);
begin
	process(clock_input) --Hcount and Vcount
   begin
		if rst = '1' then
			tempHcount <= (others => '0');
			tempVcount <= (others => '0');
      elsif(clock_input'event and clock_input='1') then
			if tempHcount = H_MAX then
				tempHcount <= (others => '0');
			else
	       tempHcount<= tempHcount + 1;
			end if;
    
			if tempHcount = H_VERT_INC then
				tempVcount<= tempVcount+ 1;             
			elsif tempVcount = V_MAX then
				tempVcount <= (others => '0');          
        end if;
     end if;   
     Vcount <= std_logic_vector(tempVcount);      
     Hcount <= std_logic_vector(tempHcount);
   end process;
  

	process(tempVcount,tempHcount)  --Vertical and Horizontal sync
	begin

		if (tempHcount >= HSYNC_BEGIN) and (tempHcount <= HSYNC_END) then
			Horiz_Sync <= '0';
		else 
			Horiz_Sync <= '1';
		end if;

		if (tempVcount >= VSYNC_BEGIN) and (tempVcount <= VSYNC_END) then
			Vert_Sync <= '0';
		else 
			Vert_Sync <= '1';
		end if;

		if (tempHcount >= 0) and (tempHcount <= H_DISPLAY_END) and (tempVcount >= 0) and (tempVcount <= V_DISPLAY_END) then
			Video_On <= '1';
		else
			Video_On <= '0';
		end if;


	end process;

end behv;
