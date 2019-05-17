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

entity keyboard is
port( 
   F0: in std_logic;
   PLAY: out std_logic;
   SWITCH: in std_logic;
   DO : in std_logic_vector(7 downto 0);
   SCHODEK_GEN : in std_logic_vector(12 downto 0);
   schodek_store: out std_logic_vector(12 downto 0));
end keyboard;

architecture Behavioral of keyboard is


begin
process1 : process(F0)
begin
 if SWITCH = '1' then
 case DO is
            when X"1C" =>
               schodek_store <= std_logic_vector(to_unsigned(5972, schodek_store'length));
            when X"1D" =>
               schodek_store <= std_logic_vector(to_unsigned(5637, schodek_store'length));
            when X"1B" =>
               schodek_store <= std_logic_vector(to_unsigned(5321, schodek_store'length));
            when X"24" =>
               schodek_store <= std_logic_vector(to_unsigned(5022, schodek_store'length));
            when X"23" =>
               schodek_store <= std_logic_vector(to_unsigned(4740, schodek_store'length));
            when X"2B" =>
               schodek_store <= std_logic_vector(to_unsigned(4474, schodek_store'length));
            when X"2C" =>
               schodek_store <= std_logic_vector(to_unsigned(4223, schodek_store'length));
            when X"34" =>
               schodek_store <= std_logic_vector(to_unsigned(3986, schodek_store'length));
            when X"35" =>
               schodek_store <= std_logic_vector(to_unsigned(3762, schodek_store'length));
            when X"33" =>
               schodek_store <= std_logic_vector(to_unsigned(3551, schodek_store'length));
            when X"3C" =>
               schodek_store <= std_logic_vector(to_unsigned(3352, schodek_store'length));
            when X"3B" =>
               schodek_store <= std_logic_vector(to_unsigned(3164, schodek_store'length));
            when X"42" =>
               schodek_store <= std_logic_vector(to_unsigned(2986, schodek_store'length));
            when others =>
               schodek_store <= std_logic_vector(to_unsigned(0, schodek_store'length));
            end case;
  PLAY <=not F0;
  else
  schodek_store <= SCHODEK_GEN;
  PLAY <= '1';
  end if;
end process process1;
end Behavioral;

