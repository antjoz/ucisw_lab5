library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity translator_bool is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           wy_a : out  STD_LOGIC;
           wy_b : out  STD_LOGIC;
           wy_c : out  STD_LOGIC;
           wy_d : out  STD_LOGIC);
end translator_bool;

architecture arch of translator_bool is

begin

wy_a <= a;
wy_b <= ((not a) and ( b or c or d)) or (b and c and d);
wy_c <= ((not a) and ( b or ((not c) and (not d)) or (c and d))) or (b and (c xor d));
wy_d <= not d;

end arch;
