----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:05:04 03/30/2016 
-- Design Name: 
-- Module Name:    blinker2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;

entity blinker2 is
	 port (
				clock : in  std_logic;
				key1  : in  std_logic; 
				key2  : in  std_logic; 
				key3  : in  std_logic;
				key4  : in  std_logic;
				led1  : out std_logic;
				led2  : out std_logic;
				led3  : out std_logic;
				led4  : out std_logic
			);
end blinker2;

architecture Behavioral of blinker2 is
	signal counter : std_logic_vector(22 downto 0) := (others=>'0');
	signal deb_key1, deb_key2, deb_key3, deb_key4: STD_LOGIC;
	
	component debouncer
   port (
			  clk_i   : in  std_logic;
			  sig     : in  std_logic;
			  deb_sig : out std_logic
       );
   end component;
	
begin	


	debouncerKey1: debouncer port map(
		sig 	  => key1,
		deb_sig => deb_key1,
		clk_i   => clock
	);
	
	debouncerKey2: debouncer port map(
		sig     => key2,
		deb_sig => deb_key2,
		clk_i   => clock
	);
	
	debouncerKey3: debouncer port map(
		sig     => key3,
		deb_sig => deb_key3,
		clk_i   => clock
	);
	
	debouncerKey4: debouncer port map(
		sig     => key4,
		deb_sig => deb_key4,
		clk_i   => clock
	);

process(clock) is
	begin
		if rising_edge(clock) then
			counter  <= counter + 1;
		end if;
	end process;

process(clock) is
	begin
		if rising_edge(clock) then
			if(deb_key1 = '1') then
				led1 <= counter(22);
			end if;
			if(deb_key2 = '1') then
				led2 <= counter(22);
			end if;
			if(deb_key3 = '1') then
				led3 <= counter(22);
			end if;
			if(deb_key4 = '1') then
				led4 <= counter(22);
			end if;
		end if;
	end process;
		
end Behavioral;