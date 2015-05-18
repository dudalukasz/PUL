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
         clk: in std_logic; 
         reset: in std_logic; 
         Pietro_zewn: in std_logic_vector(3 downto 0):="0000";   -- przycisk zewnetrzny wyboru pietra 
			Pietro_wewn: in std_logic_vector(3 downto 0):="0000";   -- przycisk wewnetrzny wyboru pietra 
         drzwi  : OUT  std_logic:='0';                   -- drzwi otwarte 1     drzwi zamkniete 0 
         Pietro_aktu  : OUT  std_logic_vector(3 downto 0);  -- aktualny numer pietra -- posluzy do wyswietlenia na 7Segm
         alarm : IN  std_logic;
         drzwi_opoznie : OUT  std_logic_vector(2 downto 0)  -- opoznienie otwierania drzwi poprzez diody  
      );
end Winda_GOTOWY;

architecture Winda_GOTOWY_entity of Winda_GOTOWY is

-- stan cel -> pietro docelowe osiagniete przez winde 
type STANY is (parter, gora, dol, zamykanie, otwieranie, cel ); 
signal stan, stan_nast :STANY; 
signal count: std_logic_vector(2 downto 0);                
signal cnt1: std_logic_vector(3 downto 0):="0000";          
signal cf, df: std_logic_vector(3 downto 0):="0000";
signal drzwi_int: std_logic; 
signal switch: std_logic; 

begin


resetowanie_ukladu: process(clk,reset)
begin
        if (reset = '1')then
           stan <= parter;
        elsif(clk'Event and clk='1') then
           stan <= stan_nast;
       end if;
end process resetowanie_ukladu;

 
automat: process(cf,df,stan)
begin
          stan_nast <= stan; 
			 case stan is 
			      when parter =>         -- z parteru mozemy tylko jechac do gory :) 					
					     drzwi_int <= '0';   -- drzwi otwarte
						  if (df > "0000") then 
									stan <= zamykanie; 
							else
							     stan <= parter;
							end if; 
               when zamykanie => 
						  if (count < "11") then 
								stan <= zamykanie;  
                    else
								drzwi_int <= '1'; 
								if ( df > cf ) then 
								stan <= gora; 
						      elsif (df < cf ) then 
						      stan <= dol; 
						      end if; 
                     end if; 						  
               -- drzwi zamkniete mozliwosc jechania do gory i w dol
                    
				   when gora => 
							if (df > cf ) then
							    cf <= cf  + '1'; 
							    stan <= gora;
						   else
								 stan <= cel;
                      end if; 								 
				   when cel => 
							if (drzwi_int = '1') then
								stan <= otwieranie;
							elsif (drzwi_int = '0' and df = cf) then
								stan <= cel; 
							elsif (drzwi_int = '0' and ((df > cf )OR(df < cf))) then
								stan <= zamykanie; 
							end if;
					when otwieranie => 
							if (count > "00") then
								stan <= otwieranie; 
                     else
								drzwi_int <= '0'; 
								stan <= cel;
                     end if; 
					when dol => 
							if (df < cf ) then
								cf <= cf - '1';
								stan <= dol; 
							else
								stan <= cel;
							end if; 
			end case; 
end process automat;

-- proces przypisywania numeru wybranego pietra jako pietra docelowego 
pietro_zewne_docelowe: process (switch)
begin 
        if (switch = '1') then 	  
			  if    (Pietro_zewn = "0000" )  then df <= "0000";  --0 
			  elsif (Pietro_zewn = "0001" )  then df <= "0000";  --1
           elsif (Pietro_zewn = "0010" )  then df <= "0001";
           elsif (Pietro_zewn = "0011" )  then df <= "0010"; 
           elsif (Pietro_zewn = "0100" )  then df <= "0011";
           elsif (Pietro_zewn = "0101" )  then df <= "0100"; 
           elsif (Pietro_zewn = "0110" )  then df <= "0101"; 
           elsif (Pietro_zewn = "0111" )  then df <= "0110";
           elsif (Pietro_zewn = "1000" )  then df <= "0111";
           elsif (Pietro_zewn = "1001" )  then df <= "1000"; 
           elsif (Pietro_zewn = "1010" )  then df <= "1001"; --9
           end if; 
		  elsif (switch = '0') then
		     if    (Pietro_wewn = "0000" )  then df <= "0000";  --0 
			  elsif (Pietro_wewn = "0001" )  then df <= "0000";  --1
           elsif (Pietro_wewn = "0010" )  then df <= "0001";
           elsif (Pietro_wewn = "0011" )  then df <= "0010"; 
           elsif (Pietro_wewn = "0100" )  then df <= "0011";
           elsif (Pietro_wewn = "0101" )  then df <= "0100"; 
           elsif (Pietro_wewn = "0110" )  then df <= "0101"; 
           elsif (Pietro_wewn = "0111" )  then df <= "0110";
           elsif (Pietro_wewn = "1000" )  then df <= "0111";
           elsif (Pietro_wewn = "1001" )  then df <= "1000"; 
           elsif (Pietro_wewn = "1010" )  then df <= "1001"; --9
			  end if;
		  end if; 
end process pietro_zewne_docelowe; 

zew_wew: process (Pietro_zewn,Pietro_wewn,stan)
begin
	if ( stan = parter ) then 
		if (Pietro_zewn = Pietro_wewn) then 
			switch <= '1'; 
		elsif(Pietro_zewn > "0000") then 
			switch <= '1'; 
		elsif(Pietro_wewn > "0000") then 
			switch <= '0'; 
		end if; 
	elsif (stan = gora ) then 
		if (Pietro_zewn < df and Pietro_zewn > cf) then 
			switch <= '1'; 
		elsif (Pietro_wewn < df and Pietro_wewn > cf) then 
			switch <= '0'; 
		end if;
	elsif (stan = gora ) then 
		if (Pietro_zewn > df and Pietro_zewn < cf) then 
			switch <= '1'; 
		elsif (Pietro_wewn > df and Pietro_wewn < cf) then 
			switch <= '0';	
		end if; 
	elsif (stan = cel) then
		if (Pietro_zewn > Pietro_wewn ) then 
			switch <= '0';
		else 
		   switch <= '1'; 
	   end if; 
  	end if; 
end process zew_wew;

process_otwierania_drzwi: process(clk,reset,stan)
begin 
         if (reset = '1' OR alarm = '1') then                         
			   count <= "00"; 
		   elsif (clk = '1' and clk'Event ) then                    -- count2 = "11"  - drzwi otwarte 
			    if ( stan = otwieranie ) then                -- nastepuje odliczanie otwarcia drzwi
			        count <= count - "1";                           -- jezeli jest stan odpowiedni oraz pietro jest aktualne 
				 elsif (stan = zamykanie ) then 
                 count <= count + '1'; 
             end if; 					  
			end if;
end process process_otwierania_drzwi; 


 
		  


-- przepisanie sygnalow 
-- sygnaly otwarci oraz zamkniecia drzwi sa przepisane w kodzie
Pietro_aktu <= cf; 
drzwi_opoznie <= count;



------------------------------------------------------------------------------------------------------------
---------DEKODOWANIE 4 bitowej na Seven Segment 


end Winda_GOTOWY_entity;
