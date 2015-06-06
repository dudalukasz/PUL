--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:41:18 05/27/2015
-- Design Name:   
-- Module Name:   /home/michal/Dokumenty/VHDL/Serdes/Deserializer_test2.vhd
-- Project Name:  Serdes
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: deserializer2
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
 
ENTITY Deserializer_test2 IS
END Deserializer_test2;
 
ARCHITECTURE behavior OF Deserializer_test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT deserializer2
    PORT(
         inp : IN  std_logic;
         outp : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         nreset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic := '0';
   signal clk : std_logic := '0';
   signal nreset : std_logic := '0';

 	--Outputs
   signal outp : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: deserializer2 PORT MAP (
          inp => inp,
          outp => outp,
          clk => clk,
          nreset => nreset
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
      wait for 100 ns;	
      nreset <= '1'; 
		
		inp <= '1'; 
      wait for clk_period*10;

		inp <= '1'; 
      wait for clk_period*10;
		
		inp <= '0'; 
      wait for clk_period*10;
		
		inp <= '1'; 
      wait for clk_period*10;
		
		inp <= '0'; 
      wait for clk_period*10;
      
		
		assert false severity failure;
   end process;

END;
