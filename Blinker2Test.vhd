--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:01:28 04/03/2016
-- Design Name:   
-- Module Name:   D:/src/vhdl/xilinx/blinker2/Blinker2Test.vhd
-- Project Name:  blinker2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: blinker2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Blinker2Test IS
END Blinker2Test;
 
ARCHITECTURE behavior OF Blinker2Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT blinker2
    PORT(
         clock : IN  std_logic;
         key1 : IN  std_logic;
         key2 : IN  std_logic;
         key3 : IN  std_logic;
         key4 : IN  std_logic;
         led1 : OUT  std_logic;
         led2 : OUT  std_logic;
         led3 : OUT  std_logic;
         led4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal key1 : std_logic := '0';
   signal key2 : std_logic := '0';
   signal key3 : std_logic := '0';
   signal key4 : std_logic := '0';

 	--Outputs
   signal led1 : std_logic;
   signal led2 : std_logic;
   signal led3 : std_logic;
   signal led4 : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: blinker2 PORT MAP (
          clock => clock,
          key1 => key1,
          key2 => key2,
          key3 => key3,
          key4 => key4,
          led1 => led1,
          led2 => led2,
          led3 => led3,
          led4 => led4
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
