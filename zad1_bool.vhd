library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity funkcja_logiczna is
    Port ( w : in  STD_LOGIC;
           x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           wy : out  STD_LOGIC);
end funkcja_logiczna;

architecture arch of funkcja_logiczna is

begin

wy <= ((not w) and (((not x) and (not y)) or z)) or (w and (x or (not z)));

end arch;
