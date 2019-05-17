--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main_sch.vhf
-- /___/   /\     Timestamp : 05/17/2019 11:23:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/prj2/main_sch.vhf -w C:/Users/lab/Desktop/prj2/main_sch.sch
--Design Name: main_sch
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main_sch is
   port ( Clock       : in    std_logic; 
          PS2_Clk     : in    std_logic; 
          PS2_Data    : in    std_logic; 
          Reset       : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          LCD_E       : out   std_logic; 
          LCD_RS      : out   std_logic; 
          LCD_RW      : out   std_logic; 
          SF_CE       : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic; 
          LCD_D       : inout std_logic_vector (3 downto 0));
end main_sch;

architecture BEHAVIORAL of main_sch is
   signal XLXN_38     : std_logic_vector (7 downto 0);
   signal XLXN_86     : std_logic_vector (15 downto 0);
   signal XLXN_90     : std_logic_vector (4 downto 0);
   signal XLXN_92     : std_logic;
   signal XLXN_93     : std_logic_vector (4 downto 0);
   signal XLXN_94     : std_logic_vector (63 downto 0);
   signal XLXN_95     : std_logic;
   signal XLXN_103    : std_logic;
   signal XLXN_105    : std_logic_vector (12 downto 0);
   signal XLXN_106    : std_logic;
   signal XLXN_123    : std_logic;
   signal XLXN_124    : std_logic_vector (3 downto 0);
   signal XLXN_125    : std_logic_vector (3 downto 0);
   signal XLXN_126    : std_logic_vector (11 downto 0);
   signal XLXN_138    : std_logic_vector (12 downto 0);
   signal XLXN_139    : std_logic;
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component main
      port ( PLAY          : in    std_logic; 
             Clock         : in    std_logic; 
             Reset         : in    std_logic; 
             schodek_store : in    std_logic_vector (12 downto 0); 
             Start         : out   std_logic; 
             Output        : out   std_logic_vector (11 downto 0); 
             Addr          : out   std_logic_vector (3 downto 0); 
             Cmd           : out   std_logic_vector (3 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
   component calculate
      port ( Clk        : in    std_logic; 
             scan_tonum : in    std_logic_vector (4 downto 0); 
             value      : out   std_logic_vector (63 downto 0); 
             Rdy        : in    std_logic);
   end component;
   
   component generator
      port ( Clk        : in    std_logic; 
             NUMBER_OUT : out   std_logic_vector (4 downto 0));
   end component;
   
   component keyboard
      port ( F0            : in    std_logic; 
             SWITCH        : in    std_logic; 
             DO            : in    std_logic_vector (7 downto 0); 
             SCHODEK_GEN   : in    std_logic_vector (12 downto 0); 
             PLAY          : out   std_logic; 
             schodek_store : out   std_logic_vector (12 downto 0));
   end component;
   
   component decider
      port ( Clk           : in    std_logic; 
             CALC          : in    std_logic; 
             RANDOM_NUMBER : in    std_logic_vector (4 downto 0); 
             DO            : in    std_logic_vector (7 downto 0); 
             SWITCH        : out   std_logic; 
             Rdy           : out   std_logic; 
             value         : out   std_logic_vector (4 downto 0); 
             blank         : out   std_logic_vector (15 downto 0); 
             SCHODEK_OUT   : out   std_logic_vector (12 downto 0));
   end component;
   
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
begin
   XLXI_5 : PS2_Kbd
      port map (Clk_Sys=>Clock,
                Clk_50MHz=>Clock,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_38(7 downto 0),
                DO_Rdy=>XLXN_92,
                E0=>open,
                F0=>XLXN_103);
   
   XLXI_7 : main
      port map (Clock=>Clock,
                PLAY=>XLXN_106,
                Reset=>Reset,
                schodek_store(12 downto 0)=>XLXN_105(12 downto 0),
                Addr(3 downto 0)=>XLXN_125(3 downto 0),
                Cmd(3 downto 0)=>XLXN_124(3 downto 0),
                Output(11 downto 0)=>XLXN_126(11 downto 0),
                Start=>XLXN_123);
   
   XLXI_18 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_86(15 downto 0),
                Clk_50MHz=>Clock,
                Line(63 downto 0)=>XLXN_94(63 downto 0),
                Reset=>Reset,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_26 : calculate
      port map (Clk=>Clock,
                Rdy=>XLXN_95,
                scan_tonum(4 downto 0)=>XLXN_93(4 downto 0),
                value(63 downto 0)=>XLXN_94(63 downto 0));
   
   XLXI_27 : generator
      port map (Clk=>Clock,
                NUMBER_OUT(4 downto 0)=>XLXN_90(4 downto 0));
   
   XLXI_28 : keyboard
      port map (DO(7 downto 0)=>XLXN_38(7 downto 0),
                F0=>XLXN_103,
                SCHODEK_GEN(12 downto 0)=>XLXN_138(12 downto 0),
                SWITCH=>XLXN_139,
                PLAY=>XLXN_106,
                schodek_store(12 downto 0)=>XLXN_105(12 downto 0));
   
   XLXI_32 : decider
      port map (CALC=>XLXN_92,
                Clk=>Clock,
                DO(7 downto 0)=>XLXN_38(7 downto 0),
                RANDOM_NUMBER(4 downto 0)=>XLXN_90(4 downto 0),
                blank(15 downto 0)=>XLXN_86(15 downto 0),
                Rdy=>XLXN_95,
                SCHODEK_OUT(12 downto 0)=>XLXN_138(12 downto 0),
                SWITCH=>XLXN_139,
                value(4 downto 0)=>XLXN_93(4 downto 0));
   
   XLXI_33 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_125(3 downto 0),
                Clk_Sys=>Clock,
                Clk_50MHz=>Clock,
                Cmd(3 downto 0)=>XLXN_124(3 downto 0),
                DATA(11 downto 0)=>XLXN_126(11 downto 0),
                Reset=>Reset,
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_123,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>open,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
end BEHAVIORAL;


