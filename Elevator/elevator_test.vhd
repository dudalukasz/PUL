--------------------------------------------------------------------------------
-- Company:       Politechnika Wroc³awska
-- Engineer:      Micha³ Ciela 
--
-- Create Date:   17:19:03 01/1/2015
-- Design Name:   Micha³ Ciela
-- Module Name:   D:/vhdl_pro/Elevator/Winda_GOTOWE_testbench.vhd
-- Project Name:  Elevator
-- Target Device:  
-- Tool versions:  
-- Description:  
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY Winda_GOTOWE_testbench IS
END Winda_GOTOWE_testbench;
 
ARCHITECTURE behavior OF Winda_GOTOWE_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Winda_GOTOWY
    PORT(
         clk1 : IN  std_logic;
         clk2 : IN  std_logic;
         rst1 : IN  std_logic;
         rst2 : IN  std_logic;
         zero : IN  std_logic;
         one : IN  std_logic;
         two : IN  std_logic;
         three : IN  std_logic;
         four : IN  std_logic;
         five : IN  std_logic;
         six : IN  std_logic;
         seven : IN  std_logic;
         eight : IN  std_logic;
         nine : IN  std_logic;
         ten : IN  std_logic;
         d_otwarte : OUT  std_logic;
         d_zamkniete : OUT  std_logic;
         c_numer_pietra : OUT  std_logic_vector(3 downto 0);
         alarm : IN  std_logic;
         c_opo_drzwi_output : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk1 : std_logic := '0';
   signal clk2 : std_logic := '0';
   signal rst1 : std_logic := '0';
   signal rst2 : std_logic := '0';
   signal zero : std_logic := '0';
   signal one : std_logic := '0';
   signal two : std_logic := '0';
   signal three : std_logic := '0';
   signal four : std_logic := '0';
   signal five : std_logic := '0';
   signal six : std_logic := '0';
   signal seven : std_logic := '0';
   signal eight : std_logic := '0';
   signal nine : std_logic := '0';
   signal ten : std_logic := '0';
   signal alarm : std_logic := '0';

 	--Outputs
   signal d_otwarte : std_logic;
   signal d_zamkniete : std_logic;
   signal c_numer_pietra : std_logic_vector(3 downto 0);
   signal c_opo_drzwi_output : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk1_period : time := 10 ns;
   constant clk2_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Winda_GOTOWY PORT MAP (
          clk1 => clk1,
          clk2 => clk2,
          rst1 => rst1,
          rst2 => rst2,
          zero => zero,
          one => one,
          two => two,
          three => three,
          four => four,
          five => five,
          six => six,
          seven => seven,
          eight => eight,
          nine => nine,
          ten => ten,
          d_otwarte => d_otwarte,
          d_zamkniete => d_zamkniete,
          c_numer_pietra => c_numer_pietra,
          alarm => alarm,
          c_opo_drzwi_output => c_opo_drzwi_output
        );

   -- Clock process definitions
   clk1_process :process
   begin
		clk1 <= '0';
		wait for clk1_period/2;
		clk1 <= '1';
		wait for clk1_period/2;
   end process;
 
   clk2_process :process
   begin
		clk2 <= '0';
		wait for clk2_period/2;
		clk2 <= '1';
		wait for clk2_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst2<= '0';
		rst1 <= '0';
		five <= '1'; 
		wait for 50 ns; 
      nine <= '0';		
		five <= '0';
		wait for 150 ns; 
		one <= '1'; 
      wait for 50 ns; 
		one <= '0';
		wait for 50 ns; 
		ten <= '1'; 
		wait for 50 ns; 
		ten <= '0';
		wait for 200 ns; 
   assert false severity failure;
   end process;

END;