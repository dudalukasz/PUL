----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:46:38 05/11/2015 
-- Design Name: 
-- Module Name:    Seven_segment - Behavioral 
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
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Seven_segment is
    Port ( mclk : in  STD_LOGIC;
           sw0 : in  STD_LOGIC;
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           sseg : out  STD_LOGIC_VECTOR (7 downto 0));
end Seven_segment;

architecture Behavioral of Seven_segment is
signal clkdiv: std_logic_vector (24 downto 0) ; 
signal cntr : std_logic_vector (3 downto 0); 
signal cclk: std_logic; 

procedure ssg_decode(signal hexcode : in std_logic_vector ( 3 downto 0);
                     signal ssg_out : out std_logic_vector (7 downto 0)) is 
							variable temp : std_logic_vector ( 7 downto 0); 
							begin 
							      case hexcode is 
									    when "0000" => temp (6 downto 0) := "10000000";    -- 0
										 when "0001" => temp (6 downto 0) := "10000110";    -- 1 
										 when "0010" => temp (6 downto 0) := "10100100";    -- 2
										 when "0011" => temp (6 downto 0) := "10110000";    -- 3
										 when "0100" => temp (6 downto 0) := "10011001";    -- 4  										 
										 when "0101" => temp (6 downto 0) := "10010010";    -- 5
										 when "0110" => temp (6 downto 0) := "10000010";    -- 6 
                               when "0111" => temp (6 downto 0) := "10000110";    -- 7 
                               when "1000" => temp (6 downto 0) := "10000000";    -- 8
                               when "1001" => temp (6 downto 0) := "10010000";    -- 7 
                               when others => temp (6 downto 0) := "11111111"; 
                           end case; 
                      ssg_out <= not temp; 
                      ssg_out(7) <= '1'; 
end ssg_decode; 							 
begin	

ssg_decode(hexcode => cntr, ssg_out => sseg); 

-- prescaler 
process (mclk)
begin 
    if (mclk = '1' and mclk'event) then 
	     clkdiv <= clkdiv + 1; 
	 end if; 

end process;

cclk <= clkdiv(24);  -- prescaler -> przepisanie ostatniego bitu 

-- switch off/on seven segment display 
process (sw0)
begin   
     if swo = '1' then 
	     anodes <= "1111" ; -- wysztkie w³aczone 
		else 
		   anodes <= "0000"; -- wszystkie wy³aczone
	   end if; 
end process; 

-- zliczanie przy uzyciu preskalera 
process (cclk) 
begin 
  if cclk = '1' and clk'event then 
     if cntr <= "1001" then 
	     cntr <= "0000"; 
	  else
	     cntr <= cntr + '1'; 
	  end if; 
	end if; 
end process; 



								
end Behavioral;

