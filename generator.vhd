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

entity generator is
port( 
   Clk: in std_logic;
   NUMBER_OUT: out unsigned(4 downto 0));
end generator;

architecture Behavioral of generator is

   signal number: unsigned(3 downto 0):="0000";
   signal max_number: unsigned(3 downto 0):="1011";
   signal divider: integer :=0;
   signal temp : std_logic_vector(12 downto 0);
   signal numb_out: unsigned(4 downto 0);
begin
process1 : process(Clk)
begin
   if(rising_edge(Clk)) then
      if(divider=10000000) then
         divider<=0;
         if number=max_number then
            number<="0000";
         else 
            number <= number + 1;
         end if;
         numb_out <= "0"&number;
      else
         divider <= divider + 1;
      end if;
   end if;
end process process1;
NUMBER_OUT<=numb_out;
end Behavioral;

