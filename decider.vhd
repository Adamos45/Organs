----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:06:05 04/08/2019 
-- Design Name: 
-- Module Name:    keyboard - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decider is
port( 
   value: out unsigned(4 downto 0);
   SWITCH: out std_logic;
   Clk: in std_logic;
   Rdy: out std_logic;
   blank: out std_logic_vector(15 downto 0);
   RANDOM_NUMBER: in unsigned(4 downto 0);
   DO : in std_logic_vector(7 downto 0);
   CALC: in std_logic;
   SCHODEK_OUT : out std_logic_vector(12 downto 0)
   );
   
   --generated_value: in std_logic_vector(3 downto 0));
end decider;

architecture Behavioral of decider is

signal scan_tonum : unsigned(4 downto 0):="00000";
signal equals : unsigned(4 downto 0):="00000";
signal take_rand: unsigned(4 downto 0);
signal number: unsigned(27 downto 0) := X"0000000";
signal blanker: std_logic_vector(15 downto 0);
signal max_number: unsigned(27 downto 0):=X"2FAF080";
signal temp: std_logic_vector(12 downto 0);
signal start_count: std_logic:='0';
signal sig_switch: std_logic;
signal ended : std_logic;
signal rand: unsigned(4 downto 0);
begin
process1 : process(Clk)
begin
blanker <="0001111111111111";  
if(rising_edge(Clk)) then
   rand<=RANDOM_NUMBER;
   if CALC = '1' then
     blanker <="0001111111111111";
   case DO is
            when X"1C" =>
               scan_tonum <= "00000";
               start_count <='0';
            when X"1D" =>
               scan_tonum <= "00001";
               start_count <='0';
            when X"1B" =>
               scan_tonum <= "00010";
               start_count <='0';
            when X"24" =>
               scan_tonum <= "00011";
               start_count <='0';
            when X"23" =>
               scan_tonum <= "00100";
               start_count <='0';
            when X"2B" =>
               scan_tonum <= "00101";
               start_count <='0';
            when X"2C" =>
               scan_tonum <= "00110";
               start_count <='0';
            when X"34" =>
               scan_tonum <= "00111";
               start_count <='0';
            when X"35" =>
               scan_tonum <= "01000";
               start_count <='0';
            when X"33" =>
               scan_tonum <= "01001";
               start_count <='0';
            when X"3C" =>
               scan_tonum <= "01010";
               start_count <='0';
            when X"3B" =>
               scan_tonum <= "01011";
               start_count <='0';
            when X"42" =>
               scan_tonum <= "01100";
               start_count <='0';
            when X"2A" =>
               scan_tonum <= "01111";
               take_rand<=rand;
               start_count <='1';
            when others =>
               scan_tonum <= "01111";
               start_count <='0';
            end case;    
   end if;
      if number = max_number then
     -- klawiatura ma tu grac
         if start_count = '1' then
            number <=X"0000000";
            start_count <='0';
         end if;
         ended <= '1';
      elsif start_count = '1' then
         ended <= '0';
         number <= number + 1; -- glosniczek gra w tym bloku     
     end if;
 end if;
   
   equals <= take_rand-scan_tonum;  
end process process1;

process4: process(ended)
begin
if ended = '1' then 
   sig_switch <= '1';
   else 
   sig_switch <= '0';
end if;
end process process4;

process2 : process(take_rand)
begin 
CASE take_rand IS 
         WHEN "00000" =>
                temp <= std_logic_vector(to_unsigned(5972, temp'length));
         WHEN "00001" =>
                 temp <= std_logic_vector(to_unsigned(5637, temp'length));
         WHEN "00010" =>
                 temp <= std_logic_vector(to_unsigned(5321, temp'length));
         WHEN "00011" =>
                 temp <= std_logic_vector(to_unsigned(5022, temp'length));
         WHEN "00100" =>
                 temp <= std_logic_vector(to_unsigned(4740, temp'length));
         WHEN "00101" =>
                 temp <= std_logic_vector(to_unsigned(4474, temp'length));
         WHEN "00110" =>
                temp <= std_logic_vector(to_unsigned(4223, temp'length));
         WHEN "00111" =>
                 temp <= std_logic_vector(to_unsigned(3986, temp'length));
         WHEN "01000" =>
                 temp <= std_logic_vector(to_unsigned(3762, temp'length));
         WHEN "01001" =>
                 temp <= std_logic_vector(to_unsigned(3551, temp'length));
         WHEN "01010" =>
                 temp <= std_logic_vector(to_unsigned(3352, temp'length));
         WHEN "01011" =>
                 temp <= std_logic_vector(to_unsigned(3164, temp'length));
         WHEN "01100" =>
                 temp <= std_logic_vector(to_unsigned(2986, temp'length));
         WHEN others =>
                 temp <= std_logic_vector(to_unsigned(0, temp'length));
      END CASE;
      SCHODEK_OUT <= temp;

end process process2;
Rdy <='1';
SWITCH <= sig_switch;
value <=equals;
blank<=blanker;
end Behavioral;

