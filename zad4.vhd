library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity licznik is
    Port (
        zegar   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        wyj   : out STD_LOGIC_VECTOR (3 downto 0)
    );
end licznik;

architecture arch of licznik is

    type state is (Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7);
    signal current_state, next_state : state;

begin

    process (zegar, reset)
    begin
        if reset = '1' then
            current_state <= Q0;
        elsif rising_edge(zegar) then
            current_state <= next_state;
        end if;
    end process;

    process (current_state)
    begin
        next_state <= current_state;
        wyj <= "0011";

        case current_state is
            when Q0 =>
                next_state <= Q1;
                wyj <= "0011";

            when Q1 =>
                next_state <= Q2;
                wyj <= "0100";

            when Q2 =>
                next_state <= Q3;
                wyj <= "0101";

            when Q3 =>
                next_state <= Q4;
                wyj <= "0110";

            when Q4 =>
                next_state <= Q5;
                wyj <= "0111";

            when Q5 =>
                next_state <= Q6;
                wyj <= "1000";

            when Q6 =>
                next_state <= Q7;
                wyj <= "1001";

            when Q7 =>
                next_state <= Q0;
                wyj <= "1010";

            when others =>
                next_state <= Q0;
                wyj <= "0011";
        end case;
    end process;

end arch;
