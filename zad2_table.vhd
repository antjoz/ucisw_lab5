
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity translator_table is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           wy_a : out  STD_LOGIC;
           wy_b : out  STD_LOGIC;
           wy_c : out  STD_LOGIC;
           wy_d : out  STD_LOGIC);
end translator_table;

architecture arch of translator_table is
signal input :std_logic_vector (3 downto 0) ;
begin
input <= a & b & c & d;
process (input)
begin
case input is
	WHEN "0000" =>
		wy_a <= '0';
		wy_b <= '0';
		wy_c <= '1';
		wy_d <= '1';
	WHEN "0001" =>
		wy_a <= '0';
		wy_b <= '1';
		wy_c <= '0';
		wy_d <= '0';
	WHEN "0010" =>
		wy_a <= '0';
		wy_b <= '1';
		wy_c <= '0';
		wy_d <= '1';
	WHEN "0011" =>
		wy_a <= '0';
		wy_b <= '1';
		wy_c <= '1';
		wy_d <= '0';
	WHEN "0100" =>
		wy_a <= '0';
		wy_b <= '1';
		wy_c <= '1';
		wy_d <= '1';
	WHEN "1011" =>
		wy_a <= '1';
		wy_b <= '0';
		wy_c <= '0';
		wy_d <= '0';
	WHEN "1100" =>
		wy_a <= '1';
		wy_b <= '0';
		wy_c <= '0';
		wy_d <= '1';
	WHEN "1101" =>
		wy_a <= '1';
		wy_b <= '0';
		wy_c <= '1';
		wy_d <= '0';
	WHEN "1110" =>
		wy_a <= '1';
		wy_b <= '0';
		wy_c <= '1';
		wy_d <= '1';
	WHEN "1111" =>
		wy_a <= '1';
		wy_b <= '1';
		wy_c <= '0';
		wy_d <= '0';
	WHEN OTHERS =>
		wy_a <= '0';
		wy_b <= '0';
		wy_c <= '0';
		wy_d <= '0';

end case;
end process;

end arch;
