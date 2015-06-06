--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:03:24 05/27/2015
-- Design Name:   
-- Module Name:   /home/michal/Dokumenty/VHDL/Serdes/test_serilizer.vhd
-- Project Name:  Serdes
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: serializer
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
 
ENTITY test_serilizer IS
END test_serilizer;
 
ARCHITECTURE behavior OF test_serilizer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT serializer
    PORT(
         paralel_in : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         nreset : IN  std_logic;
         serial_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal paralel_in : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal nreset : std_logic := '0';

 	--Outputs
   signal serial_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: serializer PORT MAP (
          paralel_in => paralel_in,
          clk => clk,
          nreset => nreset,
          serial_out => serial_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		nreset <= '0'; 
      wait for 10 ns;	
      nreset <= '1'; 
		paralel_in <= "11000110"; 
      wait for clk_period*10;

      -- insert stimulus here 

      assert false severity failure; 
   end process;

END;
