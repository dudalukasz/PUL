library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity deserializer2 is
    Port ( inp : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR(7 downto 0);
           clk : in  STD_LOGIC;
           nreset : in  STD_LOGIC
			  );
end deserializer2;

architecture deserializer_a of deserializer2 is
signal r : STD_LOGIC_VECTOR(7 downto 0);
signal cnt : STD_LOGIC_VECTOR(2 downto 0);
signal enable : STD_LOGIC;
signal cnt_wy : STD_LOGIC_VECTOR(2 downto 0);
signal rej_wy : STD_LOGIC_VECTOR(7 downto 0);

begin

licznik: process (nreset, clk)
begin
	if (nreset = '0') then
		cnt <= (others => '0');
	elsif (clk'event and clk='1') then
		cnt <= cnt + 1;
	end if;
end process licznik;

cnt_wy <= cnt;

rejestr: process (nreset, clk)
begin
	if (nreset = '0') then
		r <= (others => '0');
	elsif (clk'event and clk='1') then
			r <= inp & r(7 downto 1);
	end if;
end process rejestr;

rej_wy <= r;

komparator: process (nreset, cnt_wy)
begin
		if (nreset = '0') then
			enable <= '0';
		elsif (cnt_wy = "000") then
			enable <= '1';
		else
			enable <= '0';
		end if;
end process komparator;

zatrzask: process (nreset, clk, enable)
begin
		if (nreset = '0') then
			outp <= (others => '0');
	elsif (clk'event and clk='1' and enable='1') then
			outp <= rej_wy;
	end if;
end process zatrzask;

end deserializer_a;