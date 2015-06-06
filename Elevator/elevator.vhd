----------------------------------------------------------------------------------
-- Company:        Politechnika Wroc³awska
-- Engineer:       Micha³ Ciela
-- 
-- Create Date:    00:30:23 01/10/2015 
-- Design Name:    Micha³ Ciela
-- Module Name:    Winda_GOTOWY - Winda_GOTOWY_entity 
-- Project Name:   Sterownik windy 

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Winda_GOTOWY is 
Port ( 
         clk1 : IN  std_logic;
         clk2 : IN  std_logic;
         rst1 : IN  std_logic;
         rst2 : IN  std_logic;
         wejscie :in std_logic_vector (3 downto 0); 
         d_otwarte : OUT  std_logic:='0';     -- na diode 
         d_zamkniete : OUT  std_logic:='0';   -- na diode 
         alarm : IN  std_logic;
         c_opo_drzwi_output : OUT  std_logic_vector(1 downto 0);  -- na diody 
			sseg_disp: out std_logic_vector(6 downto 0) 
      );
end Winda_GOTOWY;

architecture Winda_GOTOWY_entity of Winda_GOTOWY is

component sseg is 
	port ( 
				CLK_50MHz: in std_logic;
			   bcd : in std_logic_vector(3 downto 0);  --BCD input from winda 
				segment7 : out std_logic_vector(6 downto 0)  -- 7 bit decoded output.
			); 
	end component; 				


type STANY is (spoczynek, gora_stan, dol_stan, otwi_zamy); 
signal stan, stan_nast :STANY; 
signal count2: std_logic_vector(1 downto 0);                
signal cnt1: std_logic_vector(3 downto 0):="0000";          
signal cf, df: std_logic_vector(3 downto 0):="0000";

begin

-- mapowanie portow 
komponent: sseg port map (
		CLK_50MHz => clk1, 
		bcd => cf,
		segment7 => sseg_disp 
		);


zerowanie_ukladu:process(clk1,rst1,alarm)
begin
        if (rst1='1' or alarm = '1')then
           stan <= spoczynek;
        elsif(clk1'Event and clk1='1') then
           stan <= stan_nast;
        end if;
end process zerowanie_ukladu;

-- proces analizy zachowan przejsc z stanu do nastepnego stanu 
-- jest czuly od sygnalow cf, df, stan 
zachowanie: process(cf,df,stan,clk1)
begin
		if (clk1'event and clk1 = '1') then
          stan_nast <= stan; 
		       case stan is 
			      when spoczynek =>                                         -- Stan spoczynek
					     if(cf = df) then 
						     stan_nast <= spoczynek; 
						  elsif ((cf > df)OR(cf < df)) then 
						     stan_nast <= otwi_zamy; 
						  end if; 
					when gora_stan =>
			           if (cf < df)then 
     						  stan_nast <= gora_stan;
							  cnt1 <= cnt1 + "0001";                            -- zwiekszanie vectora, który przechowuje wartosc 
		              end if;                                              -- aktualnego pietra, poczatkowa wartosc to "0000"
			           if (cf=df)then 
						     stan_nast <= otwi_zamy;                            
		              end if;
	            when dol_stan =>
			           if (cf > df)then  
						     stan_nast <= dol_stan;
							  cnt1 <= cnt1 - "0001";                            -- ruch windy w dol powoduje zmiejszenie wartosc vectora
                    end if;
			           if (cf=df)then
						     stan_nast <= otwi_zamy;
		              end if;
				   when otwi_zamy =>                                         -- otwieranie drzwi, w momencie gdy winda jest 
					     if (cf = df)then                                     -- miejscu docelowym 
							     stan_nast <= spoczynek;					  
						  end if; 
						  if((cf > df))then
						     stan_nast <= dol_stan; 
						  elsif(cf < df)then
						     stan_nast <= gora_stan; 
						  end if; 
			end case; 
		end if;
end process zachowanie;

-- proces przypisywania numeru wybranego pietra jako pietra docelowego 
numer_pietra_docelowego: process (clk1)
begin 
           if (clk1'Event and clk1 = '1') then       
			  if    (wejscie = "0000") then df <= "0000"; 
           elsif (wejscie = "0001")  then df <= "0001";
           elsif (wejscie = "0010")  then df <= "0010"; 
           elsif (wejscie = "0011")then df <= "0011";
           elsif (wejscie = "0100") then df <= "0100"; 
           elsif (wejscie = "0101") then df <= "0101"; 
           elsif (wejscie = "0110")  then df <= "0110";
           elsif (wejscie = "0111")then df <= "0111";
           elsif (wejscie = "1000")then df <= "1000"; 
           elsif (wejscie = "1001") then df <= "1001";
           elsif (wejscie = "1010") then df <= "1010";
			  else  df <= "0000"; 
          end if; 
		end if; 
end process numer_pietra_docelowego; 

poruszanie: process(clk1,stan)
begin    
      if (clk1 = '1' and clk1'event) then                           
         if ( stan = gora_stan and cf < df  ) then                  -- przepisanie wartosci do cf z licznika 
			    cf <= cnt1;                                            -- który posiada zawartosc pietra 
		   elsif( stan = dol_stan and cf > df ) then 
				 cf <= cnt1; 
			end if; 
		end if; 
end process poruszanie; 

process_otwierania_drzwi: process(clk2,stan,rst2)
begin 
         if (rst2 = '1' ) then                         
			   count2 <= "00"; 
		   elsif (clk2 = '1' and clk2'Event ) then                    -- count2 = "11"  - drzwi otwarte 
			    if ( stan = otwi_zamy and cf = df) then                -- nastepuje odliczanie otwarcia drzwi
			        count2 <= count2 + "01";                           -- jezeli jest stan odpowiedni oraz pietro jest aktualne 
				 else                                                   -- w przeciwnym razie drzwi s¹ zamkniete "00" 
				     count2 <= "00";                                    -- count2 = "00"- drzwi zamkniete
             end if; 					  
			end if;
end process process_otwierania_drzwi; 


-- proces zarzadzajacy otwieranie drzwi 
drzwi: process(clk2, rst2,stan)
begin 
     if (rst2 = '1' ) then                              -- reset albo alarm -> drzwi zamkniete
	     d_zamkniete <= '1'; 
		  d_otwarte <= '0';
		  
	  elsif(clk2 ='1' and clk2'Event) then                             -- clk2 synchronizuje otwarcie drzwi 
	    if (stan = otwi_zamy and cf = df) then                         -- clk2 ma okres 1/2 clk1
            if (count2 <= "11") then                                  -- drzwi sa juz otwarte 
              if ( count2 <= "11" OR count2 <= "01" OR count2 <= "10")then	       -- drzwi pozostaja dalej otwarte 			
			        d_otwarte <= '1'; 
				     d_zamkniete <= '0';
					end if; 
	         elsif(clk1 = '1' and clk1'event) then                      -- zamkniecie drzwi nastepuje przy kolejnym 
			     d_otwarte <= '0';                                        -- takcie zegara
				  d_zamkniete <= '1'; 
				end if; 
		  elsif(stan = otwi_zamy and cf>df) then	                       -- w ruchu pomiedzy pietrami drzwi sa zamkniete 
				d_zamkniete <= '1';                                        -- mozliwe zastosowanie (( cf<df) OR (cf > df))
				d_otwarte <= '0'; 
		  elsif(stan = otwi_zamy and cf<df) then 
				d_zamkniete <= '1'; 
				d_otwarte <= '0';
		  end if;  
			
	end if; 
end process; 
		  


-- przepisanie sygnalow 
-- sygnaly otwarci oraz zamkniecia drzwi sa przepisane w kodzie
c_opo_drzwi_output <= count2;  -- na diody 

end Winda_GOTOWY_entity;
