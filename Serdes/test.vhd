--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:49:27 05/26/2015
-- Design Name:   
-- Module Name:   /home/michal/Dokumenty/VHDL/Serdes/test.vhd
-- Project Name:  Serdes
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: connect_ser_des
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT connect_ser_des
    PORT(
         in_comp : IN  std_logic_vector(7 downto 0);
         out_comp : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         nreset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_comp : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal nreset : std_logic := '0';

 	--Outputs
   signal out_comp : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: connect_ser_des PORT MAP (
          in_comp => in_comp,
          out_comp => out_comp,
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
      nreset <= '1'; 	
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      in_comp <= in_comp + '1'; 
      wait for clk_period*50;
      in_comp <= "00111111";
		wait for clk_period*50;
      -- insert stimulus here 

      assert false severity failure; 
   end process;

END;
