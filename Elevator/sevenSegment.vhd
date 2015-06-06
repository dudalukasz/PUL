library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sseg is
port (
        CLK_50MHz: in std_logic;
        bcd : in std_logic_vector(3 downto 0);  --BCD input from winda 
        segment7 : out std_logic_vector(6 downto 0)  -- 7 bit decoded output 
    );
end sseg;

architecture Behavioral of sseg is
signal Counter: std_logic_vector(24 downto 0);
signal CLK_1Hz: std_logic;
	
	
begin
process (CLK_1Hz,bcd)
BEGIN
if (CLK_1Hz'event and CLK_1Hz='1') then
case  bcd is
when "0000"=> segment7 <="0000001";  -- '0'
when "0001"=> segment7 <="1001111";  -- '1'
when "0010"=> segment7 <="0010010";  -- '2'
when "0011"=> segment7 <="0000110";  -- '3'
when "0100"=> segment7 <="1001100";  -- '4' 
when "0101"=> segment7 <="0100100";  -- '5'
when "0110"=> segment7 <="0100000";  -- '6'
when "0111"=> segment7 <="0001111";  -- '7'
when "1000"=> segment7 <="0000000";  -- '8'
when "1001"=> segment7 <="0000100";  -- '9'
 --nothing is displayed when a number more than 9 is given as input. 
when others=> segment7 <="1111111"; 
end case;
end if;

end process;

Prescaler: process(CLK_50MHz)
	begin
		if rising_edge(CLK_50MHz) then
			if Counter < "1011111010111100001000000" then
				Counter <= Counter + 1;
			else
				CLK_1Hz <= not CLK_1Hz;
				Counter <= (others => '0');
			end if;
		end if;
end process Prescaler;
	

end Behavioral;