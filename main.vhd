----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:01:34 03/11/2019 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity main is
   port( 
    PLAY: in std_logic;
 	 Clock: in std_logic;
 	 Reset: in std_logic;
    schodek_store: in std_logic_vector(12 downto 0);
 	 Output: out std_logic_vector(11 downto 0);
    Addr: out std_logic_vector(3 downto 0);
    Cmd: out std_logic_vector(3 downto 0);
    Start: out std_logic);
end main;
 
architecture Behavioral of main is
   signal temp: std_logic_vector(4 downto 0):="00000";
   signal schodek: std_logic_vector(12 downto 0):="0000000000000";
   type state_type is (A, B);
   signal state, next_state : state_type;
begin  
   process2 : process(state, PLAY)
   begin
    case state is 
         when A =>
            if PLAY = '0' then
               next_state <= B;
            end if;
            if PLAY = '1' then
               next_state <= A;
            end if;
          when B =>
             if PLAY = '1' then 
                next_state <= A;            
             end if;
             if PLAY = '0' then
                next_state <=B;
             end if;
     end case;
    
   end process process2;
   
   process(Clock,Reset)
   begin
      
      if Reset='1' then    
         temp <= "00000";
         schodek<="0000000000000";
         start<='1';
         state <= A;
      elsif(rising_edge(Clock)) then
         state<=next_state;
         if state=A then        
               if schodek=schodek_store then
                  schodek<="0000000000000";
                  start <= '1'; 
                  if temp="11111" then         
                     temp<="00000";
                  else
                     temp <= temp + 1; 
                  end if;
               else 
              schodek <= schodek + 1;
              start<='0';
            
            end if;
         else
            temp <= "00000";
            schodek<="0000000000000";
         end if;
      end if;
   end process;
   Output <= temp & "1111111";
   Addr <="1111";
   Cmd <="0011";
end Behavioral;

