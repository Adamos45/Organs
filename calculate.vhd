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

entity calculate is
port( 
   value: out std_logic_vector(63 downto 0);
   Clk: in std_logic;
   Rdy: in std_logic;
   scan_tonum : in std_logic_vector(4 downto 0));
end calculate;

architecture Behavioral of calculate is
signal temp : unsigned(63 downto 0):=X"0000000000000000";
begin

process1 : process(Rdy)
begin
   if Rdy ='1' then
   case scan_tonum is
            when "00000" =>
               temp<= X"AAA0000000000000";
            when "00001" =>
               temp<= X"0010000000000000";
            when "00010" =>
               temp<= X"0020000000000000";
            when "00011" =>
               temp<= X"0030000000000000";
            when "00100" =>
               temp<= X"0040000000000000";
            when "00101" =>
               temp<= X"0050000000000000";
            when "00110" =>
               temp<= X"0060000000000000";
            when "00111" =>
               temp<= X"0070000000000000";
            when "01000" =>
               temp<= X"0080000000000000";
            when "01001" =>
               temp<= X"0090000000000000";
            when "01010" =>
               temp<= X"0100000000000000";
            when "01011" =>
               temp<= X"0110000000000000";
            when "01100" =>
               temp<= X"0120000000000000";
            when "11111" =>
               temp<= X"F010000000000000";
            when "11110" =>
               temp<= X"F020000000000000";
            when "11101" =>
               temp<= X"F030000000000000";
            when "11100" =>
               temp<= X"F040000000000000";
            when "11011" =>
               temp<= X"F050000000000000";
            when "11010" =>
               temp<= X"F060000000000000";
            when "11001" =>
               temp<= X"F070000000000000";
            when "11000" =>
               temp<= X"F080000000000000";
            when "10111" =>
               temp<= X"F090000000000000";
            when "10110" =>
               temp<= X"F100000000000000";
            when "10101" =>
               temp<= X"F110000000000000";
            when "10100" =>
               temp<= X"F120000000000000";
            when others =>
               temp<= X"FFF0000000000000";
            end case;
   end if;
end process process1;
value<=std_logic_vector(temp);

end Behavioral;

