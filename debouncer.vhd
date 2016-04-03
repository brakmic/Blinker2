----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:51 04/03/2016 
-- Design Name: 
-- Module Name:    debouncer - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debouncer is
    Port ( clk_i   : in  STD_LOGIC;
           sig     : in  STD_LOGIC;
           deb_sig : out  STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is
 signal q0, q1, q2 : STD_LOGIC := '0';
begin

process (clk_i) is
begin
	if (clk_i'event and clk_i = '1') then 
		q0 <= sig;
		q1 <= q0;
		q2 <= q1;
	end if;
end process;

deb_sig <= q0 and q1 and (not q2);

end Behavioral;

