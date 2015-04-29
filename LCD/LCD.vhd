------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date:    20:27:16 04/18/2015 
---- Design Name: 
---- Module Name:    control - Behavioral 
---- Project Name: 
---- Target Devices: 
---- Tool versions: 
---- Description: 
----
---- Dependencies: 
----
---- Revision: 
---- Revision 0.01 - File Created
---- Additional Comments: 
----
------------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY lcd_controller IS
  PORT(
    clk        : IN    STD_LOGIC;  --system clock
    reset    : IN    STD_LOGIC;  --active low reinitializes lcd
    rw, rs, e  : OUT   STD_LOGIC;  --read/write, setup/data, and enable for lcd
    db   : OUT   STD_LOGIC_VECTOR(3 DOWNTO 0)); --data signals for lcd
END lcd_controller;

ARCHITECTURE controller OF lcd_controller IS
  TYPE state_type IS(power_up, initialize, ready, prepare, send, done);
  TYPE memory_type is array (0 to 31) of std_logic_vector(7 downto 0);
  SIGNAL    state      : state_type := power_up;
  CONSTANT  freq       : INTEGER := 50;
  --SIGNAL upper_case	  : memory_type := ("01000001", "01000010", "01000011", "01000100", "01000101", "01000110", "01000111", "01001000", "01001001", "01001010", "01001011", "01001100", "01001101", "01001110", "01001111", "01010000", "01010001", "01010010", "01010011", "01010100", "01010101", "01010110", "01010111", "01011000", "01011001", "01011010");
  --SIGNAL lower_case	  : memory_type := ("01100001", "01100010", "01100011", "01100100", "01100101", "01100110", "01100111", "01101000", "01101001", "01101010", "01101011", "01101100", "01101101", "01101110", "01101111", "01110000", "01110001", "01110010", "01110011", "01110100", "01110101", "01110110", "01110111", "01111000", "01111001", "01111010");
  SIGNAL lcd_characters : memory_type := ("01100001", "01100010", "01100011", "01100100", "01100101", "01100110", "01100111", "01101000", "01101001", "01101010", "01101011", "01101100", "01101101", "01101110", "01101111", "01110000", "01110001", "01110010", "01110011", "01110100", "01110101", "01110110", "01110111", "01111000", "01111001", "01111010", "01100001", "01100010", "01100001", "01100010", "01100001", "01100010");
  SIGNAL lcd_buffer	  : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL i 				  : INTEGER range 0 to 32 :=0;
  SIGNAL lcd_address	  : STD_LOGIC_VECTOR(7 downto 0); --range X"00" to X"1F" := X"00"
  
  
BEGIN
  PROCESS(clk, reset)
    VARIABLE clk_count : INTEGER := 0; --event counter for timing
  BEGIN
  IF(reset = '0') THEN
	  state <= power_up;
  ELSIF(clk'EVENT and clk = '1') THEN
      CASE state IS
        WHEN power_up =>
          IF(clk_count < (50000 * freq)) THEN    --wait 50 ms
            clk_count := clk_count + 1;
            state <= power_up;
          ELSE                                   --power-up complete
            clk_count := 0;
            rs <= '0';
            rw <= '0';
            db <= "0011";
            state <= initialize;
          END IF;
          
        WHEN initialize =>
          clk_count := clk_count + 1;
          IF(clk_count < (5010 * freq)) THEN       --function set
            db <= "0010";
            e <= '1';
            state <= initialize;
				
          ELSIF(clk_count < (5060 * freq)) THEN    --wait 50 us
            e <= '0';
            state <= initialize;
				
          ELSIF(clk_count < (5110 * freq)) THEN   --function set II
            db <= "1000";
            e <= '1';
            state <= initialize;
				
          ELSIF(clk_count < (5160 * freq)) THEN    --wait 50 us
            e <= '0';
            state <= initialize;
				
          ELSIF(clk_count < (5170 * freq)) THEN    --display on/off control
            db <= "0000";         
            e <= '1';
            state <= initialize;
				
          ELSIF(clk_count < (5220 * freq)) THEN   --wait 50 us
            e <= '0';
            state <= initialize;
          ELSIF(clk_count < (5270 * freq)) THEN    --display on/off control II
            db <= "1111";         
            e <= '1';
            state <= initialize;
				
          ELSIF(clk_count < (5320 * freq)) THEN   --wait 50 us
            e <= '0';
            state <= initialize;

          ELSIF(clk_count < (5330 * freq)) THEN   --display clear
            db <= "0000";
            e <= '1';
            state <= initialize;
				
          ELSIF(clk_count < (5380 * freq)) THEN   --wait 50 us
            e <= '0';
            state <= initialize;
				
          ELSIF(clk_count < (5390 * freq)) THEN   --display clear II
            db <= "0001";
            e <= '1';
            state <= initialize;
				
          ELSIF(clk_count < (7440 * freq)) THEN  --wait 2 ms
            e <= '0';
            state <= initialize;
				
          ELSIF(clk_count < (7450 * freq)) THEN  --entry mode set
            db <= "0000";
            e <= '1';
            state <= initialize;
				
          ELSIF(clk_count < (7490 * freq)) THEN   --wait 50 us
            e <= '0';
            state <= initialize;
				
          ELSIF(clk_count < (7500 * freq)) THEN  --entry mode set II
            db <= "0110";
            e <= '1';
            state <= initialize;
				
          ELSIF(clk_count < (7550 * freq)) THEN   --wait 50 us
            e <= '0';
            state <= initialize;
--				
--          ELSIF(clk_count < (7600 * freq)) THEN  --wait 60 us
--            db <= "0000";
--            e <= '0';
--            state <= initialize;
				
          ELSE                                   --initialization complete
            clk_count := 0;
            state <= ready;
          END IF;    
       
        WHEN ready =>
				lcd_buffer <= "00000000";
				lcd_address <= "10000000";
            rs <= '1';
            rw <= '0';
				e <= '1';
				i <= 0;
            db <= "0000";
            clk_count := 0;
            state <= prepare;
               
--        WHEN send =>
--        IF(clk_count < (50 * freq)) THEN  --do not exit for 50us
--           IF(clk_count < freq) THEN      --negative enable
--            e <= '0';
--           ELSIF(clk_count < (12 * freq)) THEN  --positive enable half-cycle
--            e <= '1';
--           ELSIF(clk_count < (15 * freq)) THEN  --positive enable half-cycle
--            db <= lcd_buffer(3 downto 0);
--				e <= '0';
--           ELSIF(clk_count < (27 * freq)) THEN  --negative enable half-cycle
--            e <= '1';
--           END IF;
--           clk_count := clk_count + 1;
--           state <= send;
--        ELSE
--          clk_count := 0;
--          state <= ready;
--        END IF;


        WHEN prepare =>
			IF(i = 32) THEN
--				IF (i = 15) THEN
--					lcd_address <= "11000000";
--					state <= send;
--				ELSE
--					lcd_buffer <= lcd_characters(i);
--					i <= i + 1;
--					lcd_address <= lcd_address + "1";
--					clk_count := 0;
--					state <= send;
--				END IF;
				state <= done;
			ELSE
				lcd_buffer <= lcd_characters(i);
				i <= i + 1;
				lcd_address <= lcd_address + "1";
				clk_count := 0;
				state <= send;
			END IF;
--				
		 WHEN send =>
		 clk_count := clk_count + 1;
		 IF(clk_count < (1200 * freq)) THEN
			IF (clk_count < (80 * freq)) THEN					--adres
				rs <= '0';
				db <= lcd_address(7 downto 4);
				e <= '1';
			ELSIF (clk_count < (140 * freq)) THEN
				e <= '0';
			ELSIF (clk_count < (180 * freq)) THEN
				db <= lcd_address(3 downto 0);
				e <= '1';
			ELSIF (clk_count < (260 * freq)) THEN
				e <= '0';
			ELSIF (clk_count < (390 * freq)) THEN
				e <= '1';
				
			ELSIF (clk_count < (480 * freq)) THEN					--znak
				rs <= '1';
				db <= lcd_buffer(7 downto 4);
				e <= '1';
			ELSIF (clk_count < (640 * freq)) THEN
				e <= '0';
			ELSIF (clk_count < (680 * freq)) THEN
				db <= lcd_buffer(3 downto 0);
				e <= '1';
			ELSIF (clk_count < (860 * freq)) THEN
				e <= '0';
			ELSIF (clk_count < (990 * freq)) THEN
				e <= '1';
			END IF;
		ELSE
			state <= prepare;
		END IF;	
			
		WHEN done =>
				clk_count := 0;
				lcd_buffer <= "00000000";
				lcd_address <= "00000000";
            rs <= '0';
            rw <= '0';
				e <= '1';
            db <= "0000";
				
      END CASE;    
    
      --reset
--      IF(reset = '0') THEN
--          state <= power_up;
--      END IF;
    
    END IF;
  END PROCESS;
END controller;
