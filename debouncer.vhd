----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    19:19:51 04/03/2016
-- Design Name: debouncer
-- Module Name:    debouncer - Behavioral
-- Project Name: blinker2
-- Target Devices: Xilinx Spartan 6
-- Tool versions: ISE 14.7
-- Description: debouncer for processing key presses
--
-- Dependencies: none
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-- visible inputs/outputs of the component
entity debouncer is
    port ( clk_i   : in  std_logic;
           sig     : in  std_logic;
           deb_sig : out std_logic);
end debouncer;
-- implementation of the component
architecture Behavioral of debouncer is
-- A key press generates not one but several signals (0101110101, 01110010101, 000101010101 etc.)
-- And we're interested only in the 'stable' one (like 0000000000).
-- This means when a key signal goes from 1 to 0 (unpressed is 1 / pressed is 0)
-- we'll debounce 'jittering' signals (000101010101) and collect only those that contain several consecutive 0's
 signal q0, q1, q2 : std_logic := '0';
begin
-- We define a new processing logic and let it observe the clock
process (clk_i) is
begin
-- When the clock wave goes 'up' we grab the signal and shift it to q0,
-- then on each new clock-cycle we shift signals to q1, then q2. Between each of the
-- shifts there's a slight delay so the signal can be 'cleaned'.
	if rising_edge(clk_i) then
		q0 <= sig;
		q1 <= q0;
		q2 <= q1;
	end if;
end process;
-- Here we shift the cleaned bits to 'deb_sig' that's the output of this component
deb_sig <= q0 and q1 and q2;

end Behavioral;

