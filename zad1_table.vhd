library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity funkcja_table is
    Port ( w : in  STD_LOGIC;
           x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           wy : out  STD_LOGIC);
end funkcja_table;

architecture arch of funkcja_table is
signal input :std_logic_vector(3 downto 0);
begin
input <= w & x & y & z;
process (input)
begin
case input is 

	WHEN "0000" => wy <= '1';
	WHEN "0001" => wy <= '1';
	WHEN "0010" => wy <= '0';
	WHEN "0011" => wy <= '1';
	WHEN "0100" => wy <= '0';
	WHEN "0101" => wy <= '1';
	WHEN "0110" => wy <= '0';
	WHEN "0111" => wy <= '1';
	WHEN "1000" => wy <= '1';
	WHEN "1001" => wy <= '0';
	WHEN "1010" => wy <= '1';
	WHEN "1011" => wy <= '0';
	WHEN "1100" => wy <= '1';
	WHEN "1101" => wy <= '1';
	WHEN "1110" => wy <= '1';
	WHEN "1111" => wy <= '1';
	WHEN OTHERS => wy <= '0';
	
end case;
end process;


end arch;
