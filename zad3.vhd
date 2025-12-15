library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity detektor_sekwencji is
  port (
    rot_right : in  std_logic;
    rot_left  : in  std_logic;
    reset     : in  std_logic;
    wyj       : out std_logic;
    stan      : out std_logic_vector (3 downto 0)
  );
end detektor_sekwencji;

architecture arch of detektor_sekwencji is

  type state is (Q0, Q1, Q2, Q3, Q4, Q5);
  signal current_state, next_state : state;
  signal clk : std_logic;

begin

  clk <= rot_right or rot_left;

  statereg : process (clk, reset)
  begin
    if reset = '1' then
      current_state <= Q0;
    elsif (clk = '1' and clk'event) then
      current_state <= next_state;
    end if;
  end process;

  comblogic : process (current_state, rot_right, rot_left)
  begin
    next_state <= Q0;
    wyj <= '0';

    case current_state is

      when Q0 =>
        stan <= "0000";
        if rot_right = '1' then
          next_state <= Q1;
        else
          next_state <= Q0;
        end if;

      when Q1 =>
        stan <= "0001";
        if rot_left = '1' then
          next_state <= Q2;
        else
          next_state <= Q1;
        end if;

      when Q2 =>
        stan <= "0010";
        if rot_right = '1' then
          next_state <= Q3;
        else
          next_state <= Q0;
        end if;

      when Q3 =>
        stan <= "0011";
        if rot_right = '1' then
          next_state <= Q4;
        else
          next_state <= Q2;
        end if;

      when Q4 =>
        stan <= "0100";
        if rot_right = '1' then
          next_state <= Q5;
        else
          next_state <= Q2;
        end if;

      when Q5 =>
        stan <= "0101";
        wyj <= '1';
        if rot_right = '1' then
          next_state <= Q1;
        else
          next_state <= Q2;
        end if;

    end case;
  end process;

end arch;
