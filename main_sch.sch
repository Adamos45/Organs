<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Reset" />
        <signal name="XLXN_38(7:0)" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_86(15:0)" />
        <signal name="XLXN_88" />
        <signal name="XLXN_90(4:0)" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93(4:0)" />
        <signal name="XLXN_94(63:0)" />
        <signal name="XLXN_95" />
        <signal name="Clock" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104(7:0)" />
        <signal name="XLXN_105(12:0)" />
        <signal name="XLXN_106" />
        <signal name="XLXN_123" />
        <signal name="XLXN_124(3:0)" />
        <signal name="XLXN_125(3:0)" />
        <signal name="XLXN_126(11:0)" />
        <signal name="XLXN_127" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="XLXN_138(12:0)" />
        <signal name="XLXN_139" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="Clock" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="main">
            <timestamp>2019-4-8T8:22:47</timestamp>
            <rect width="64" x="0" y="468" height="24" />
            <line x2="0" y1="480" y2="480" x1="64" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <rect width="64" x="368" y="84" height="24" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <rect width="64" x="368" y="148" height="24" />
            <line x2="432" y1="160" y2="160" x1="368" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="304" x="64" y="-192" height="704" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2019-5-6T8:14:35</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="decider">
            <timestamp>2019-5-17T8:23:1</timestamp>
            <line x2="464" y1="288" y2="288" x1="400" />
            <rect width="64" x="400" y="340" height="24" />
            <line x2="464" y1="352" y2="352" x1="400" />
            <line x2="464" y1="224" y2="224" x1="400" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="336" x="64" y="-128" height="576" />
        </blockdef>
        <blockdef name="calculate">
            <timestamp>2019-5-6T11:9:55</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="448" y="-236" height="24" />
            <line x2="512" y1="-224" y2="-224" x1="448" />
            <rect width="384" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="generator">
            <timestamp>2019-5-17T7:51:53</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="256" />
        </blockdef>
        <blockdef name="keyboard">
            <timestamp>2019-5-17T7:24:40</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="448" />
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_5">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clock" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_103" name="F0" />
            <blockpin signalname="XLXN_92" name="DO_Rdy" />
            <blockpin signalname="XLXN_38(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clock" name="Clk_Sys" />
        </block>
        <block symbolname="main" name="XLXI_7">
            <blockpin signalname="XLXN_106" name="PLAY" />
            <blockpin signalname="Clock" name="Clock" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_105(12:0)" name="schodek_store(12:0)" />
            <blockpin signalname="XLXN_123" name="Start" />
            <blockpin signalname="XLXN_126(11:0)" name="Output(11:0)" />
            <blockpin signalname="XLXN_125(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_124(3:0)" name="Cmd(3:0)" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_18">
            <blockpin signalname="Clock" name="Clk_50MHz" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_94(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_86(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="calculate" name="XLXI_26">
            <blockpin signalname="Clock" name="Clk" />
            <blockpin signalname="XLXN_93(4:0)" name="scan_tonum(4:0)" />
            <blockpin signalname="XLXN_94(63:0)" name="value(63:0)" />
            <blockpin signalname="XLXN_95" name="Rdy" />
        </block>
        <block symbolname="generator" name="XLXI_27">
            <blockpin signalname="Clock" name="Clk" />
            <blockpin signalname="XLXN_90(4:0)" name="NUMBER_OUT(4:0)" />
        </block>
        <block symbolname="keyboard" name="XLXI_28">
            <blockpin signalname="XLXN_103" name="F0" />
            <blockpin signalname="XLXN_139" name="SWITCH" />
            <blockpin signalname="XLXN_38(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_138(12:0)" name="SCHODEK_GEN(12:0)" />
            <blockpin signalname="XLXN_106" name="PLAY" />
            <blockpin signalname="XLXN_105(12:0)" name="schodek_store(12:0)" />
        </block>
        <block symbolname="decider" name="XLXI_32">
            <blockpin signalname="Clock" name="Clk" />
            <blockpin signalname="XLXN_92" name="CALC" />
            <blockpin signalname="XLXN_90(4:0)" name="RANDOM_NUMBER(4:0)" />
            <blockpin signalname="XLXN_38(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_139" name="SWITCH" />
            <blockpin signalname="XLXN_95" name="Rdy" />
            <blockpin signalname="XLXN_93(4:0)" name="value(4:0)" />
            <blockpin signalname="XLXN_86(15:0)" name="blank(15:0)" />
            <blockpin signalname="XLXN_138(12:0)" name="SCHODEK_OUT(12:0)" />
        </block>
        <block symbolname="DACWrite" name="XLXI_33">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_123" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_124(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_125(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_126(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clock" name="Clk_50MHz" />
            <blockpin signalname="Clock" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="1184" y="688" name="Clock" orien="R180" />
        <iomarker fontsize="28" x="1184" y="752" name="Reset" orien="R180" />
        <instance x="1232" y="448" name="XLXI_5" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="1232" y1="224" y2="224" x1="768" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="1232" y1="288" y2="288" x1="784" />
        </branch>
        <iomarker fontsize="28" x="768" y="224" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="784" y="288" name="PS2_Data" orien="R180" />
        <instance x="656" y="1008" name="XLXI_7" orien="R0">
        </instance>
        <branch name="LCD_E">
            <wire x2="3344" y1="240" y2="240" x1="3312" />
        </branch>
        <iomarker fontsize="28" x="3344" y="240" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="3344" y1="304" y2="304" x1="3312" />
        </branch>
        <iomarker fontsize="28" x="3344" y="304" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="3344" y1="368" y2="368" x1="3312" />
        </branch>
        <iomarker fontsize="28" x="3344" y="368" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="3344" y1="432" y2="432" x1="3312" />
        </branch>
        <iomarker fontsize="28" x="3344" y="432" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="3344" y1="496" y2="496" x1="3312" />
        </branch>
        <iomarker fontsize="28" x="3344" y="496" name="SF_CE" orien="R0" />
        <instance x="2896" y="528" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_38(7:0)">
            <wire x2="544" y1="128" y2="592" x1="544" />
            <wire x2="640" y1="592" y2="592" x1="544" />
            <wire x2="1680" y1="128" y2="128" x1="544" />
            <wire x2="1680" y1="128" y2="1072" x1="1680" />
            <wire x2="672" y1="512" y2="512" x1="640" />
            <wire x2="640" y1="512" y2="592" x1="640" />
            <wire x2="1264" y1="1072" y2="1168" x1="1264" />
            <wire x2="1808" y1="1168" y2="1168" x1="1264" />
            <wire x2="1680" y1="1072" y2="1072" x1="1264" />
            <wire x2="1808" y1="224" y2="224" x1="1616" />
            <wire x2="1808" y1="224" y2="1168" x1="1808" />
            <wire x2="1808" y1="208" y2="224" x1="1808" />
            <wire x2="1936" y1="208" y2="208" x1="1808" />
            <wire x2="1936" y1="208" y2="240" x1="1936" />
            <wire x2="1984" y1="240" y2="240" x1="1936" />
            <wire x2="1984" y1="144" y2="240" x1="1984" />
            <wire x2="2000" y1="144" y2="144" x1="1984" />
        </branch>
        <branch name="XLXN_86(15:0)">
            <wire x2="2656" y1="208" y2="208" x1="2464" />
            <wire x2="2656" y1="208" y2="304" x1="2656" />
            <wire x2="2880" y1="304" y2="304" x1="2656" />
            <wire x2="2896" y1="304" y2="304" x1="2880" />
        </branch>
        <branch name="XLXN_90(4:0)">
            <wire x2="512" y1="384" y2="384" x1="496" />
            <wire x2="576" y1="384" y2="384" x1="512" />
            <wire x2="576" y1="160" y2="384" x1="576" />
            <wire x2="1632" y1="160" y2="160" x1="576" />
            <wire x2="1632" y1="160" y2="336" x1="1632" />
            <wire x2="2000" y1="336" y2="336" x1="1632" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="1632" y1="416" y2="416" x1="1616" />
            <wire x2="1792" y1="416" y2="416" x1="1632" />
            <wire x2="1792" y1="272" y2="416" x1="1792" />
            <wire x2="2000" y1="272" y2="272" x1="1792" />
        </branch>
        <instance x="2832" y="1040" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_93(4:0)">
            <wire x2="2640" y1="144" y2="144" x1="2464" />
            <wire x2="2640" y1="144" y2="880" x1="2640" />
            <wire x2="2816" y1="880" y2="880" x1="2640" />
            <wire x2="2832" y1="880" y2="880" x1="2816" />
        </branch>
        <branch name="XLXN_94(63:0)">
            <wire x2="2896" y1="240" y2="240" x1="2880" />
            <wire x2="2880" y1="240" y2="640" x1="2880" />
            <wire x2="3408" y1="640" y2="640" x1="2880" />
            <wire x2="3408" y1="640" y2="816" x1="3408" />
            <wire x2="3408" y1="816" y2="816" x1="3344" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="2656" y1="464" y2="464" x1="2464" />
            <wire x2="2656" y1="464" y2="944" x1="2656" />
            <wire x2="2816" y1="944" y2="944" x1="2656" />
            <wire x2="2832" y1="944" y2="944" x1="2816" />
        </branch>
        <instance x="112" y="352" name="XLXI_27" orien="R0">
        </instance>
        <instance x="672" y="544" name="XLXI_28" orien="R0">
        </instance>
        <branch name="XLXN_103">
            <wire x2="560" y1="144" y2="464" x1="560" />
            <wire x2="640" y1="464" y2="464" x1="560" />
            <wire x2="1696" y1="144" y2="144" x1="560" />
            <wire x2="1696" y1="144" y2="352" x1="1696" />
            <wire x2="672" y1="384" y2="384" x1="640" />
            <wire x2="640" y1="384" y2="464" x1="640" />
            <wire x2="1696" y1="352" y2="352" x1="1616" />
        </branch>
        <branch name="XLXN_105(12:0)">
            <wire x2="656" y1="1488" y2="1488" x1="640" />
            <wire x2="640" y1="1488" y2="1600" x1="640" />
            <wire x2="1248" y1="1600" y2="1600" x1="640" />
            <wire x2="1248" y1="576" y2="576" x1="1056" />
            <wire x2="1248" y1="576" y2="1600" x1="1248" />
        </branch>
        <branch name="XLXN_106">
            <wire x2="656" y1="1424" y2="1424" x1="624" />
            <wire x2="624" y1="1424" y2="1584" x1="624" />
            <wire x2="1232" y1="1584" y2="1584" x1="624" />
            <wire x2="1232" y1="640" y2="640" x1="1056" />
            <wire x2="1232" y1="640" y2="1584" x1="1232" />
        </branch>
        <branch name="Clock">
            <wire x2="112" y1="320" y2="320" x1="32" />
            <wire x2="32" y1="320" y2="608" x1="32" />
            <wire x2="512" y1="608" y2="608" x1="32" />
            <wire x2="512" y1="352" y2="608" x1="512" />
            <wire x2="1216" y1="352" y2="352" x1="512" />
            <wire x2="1232" y1="352" y2="352" x1="1216" />
            <wire x2="1216" y1="352" y2="416" x1="1216" />
            <wire x2="1216" y1="416" y2="688" x1="1216" />
            <wire x2="1216" y1="688" y2="1200" x1="1216" />
            <wire x2="1216" y1="1200" y2="1264" x1="1216" />
            <wire x2="1968" y1="1264" y2="1264" x1="1216" />
            <wire x2="1968" y1="1264" y2="2208" x1="1968" />
            <wire x2="2064" y1="2208" y2="2208" x1="1968" />
            <wire x2="1968" y1="1200" y2="1200" x1="1216" />
            <wire x2="2000" y1="1200" y2="1200" x1="1968" />
            <wire x2="2000" y1="1200" y2="2144" x1="2000" />
            <wire x2="2064" y1="2144" y2="2144" x1="2000" />
            <wire x2="1344" y1="688" y2="688" x1="1216" />
            <wire x2="1392" y1="688" y2="688" x1="1344" />
            <wire x2="1392" y1="688" y2="1504" x1="1392" />
            <wire x2="1696" y1="688" y2="688" x1="1392" />
            <wire x2="1232" y1="416" y2="416" x1="1216" />
            <wire x2="656" y1="912" y2="912" x1="608" />
            <wire x2="608" y1="912" y2="1504" x1="608" />
            <wire x2="1392" y1="1504" y2="1504" x1="608" />
            <wire x2="1216" y1="688" y2="688" x1="1184" />
            <wire x2="1344" y1="480" y2="688" x1="1344" />
            <wire x2="2688" y1="480" y2="480" x1="1344" />
            <wire x2="2688" y1="480" y2="624" x1="2688" />
            <wire x2="2720" y1="624" y2="624" x1="2688" />
            <wire x2="2928" y1="624" y2="624" x1="2720" />
            <wire x2="2720" y1="624" y2="688" x1="2720" />
            <wire x2="2928" y1="688" y2="688" x1="2720" />
            <wire x2="1696" y1="400" y2="688" x1="1696" />
            <wire x2="1984" y1="400" y2="400" x1="1696" />
            <wire x2="1984" y1="400" y2="416" x1="1984" />
            <wire x2="2000" y1="400" y2="400" x1="1984" />
            <wire x2="1984" y1="416" y2="416" x1="1904" />
            <wire x2="1904" y1="416" y2="1360" x1="1904" />
            <wire x2="2720" y1="1360" y2="1360" x1="1904" />
            <wire x2="2720" y1="816" y2="1360" x1="2720" />
            <wire x2="2832" y1="816" y2="816" x1="2720" />
            <wire x2="2896" y1="496" y2="496" x1="2816" />
            <wire x2="2816" y1="496" y2="608" x1="2816" />
            <wire x2="2928" y1="608" y2="608" x1="2816" />
            <wire x2="2928" y1="608" y2="624" x1="2928" />
        </branch>
        <branch name="Reset">
            <wire x2="656" y1="976" y2="976" x1="592" />
            <wire x2="592" y1="976" y2="1520" x1="592" />
            <wire x2="1152" y1="1520" y2="1520" x1="592" />
            <wire x2="1328" y1="928" y2="928" x1="1152" />
            <wire x2="1152" y1="928" y2="1392" x1="1152" />
            <wire x2="1152" y1="1392" y2="1520" x1="1152" />
            <wire x2="2704" y1="1392" y2="1392" x1="1152" />
            <wire x2="1280" y1="752" y2="752" x1="1184" />
            <wire x2="1328" y1="752" y2="752" x1="1280" />
            <wire x2="1328" y1="752" y2="928" x1="1328" />
            <wire x2="1280" y1="512" y2="752" x1="1280" />
            <wire x2="1792" y1="512" y2="512" x1="1280" />
            <wire x2="1792" y1="512" y2="1136" x1="1792" />
            <wire x2="1968" y1="1136" y2="1136" x1="1792" />
            <wire x2="2016" y1="1136" y2="1136" x1="1968" />
            <wire x2="2016" y1="1136" y2="2080" x1="2016" />
            <wire x2="2064" y1="2080" y2="2080" x1="2016" />
            <wire x2="2704" y1="560" y2="1392" x1="2704" />
            <wire x2="2928" y1="560" y2="560" x1="2704" />
            <wire x2="2928" y1="560" y2="592" x1="2928" />
            <wire x2="2896" y1="432" y2="432" x1="2832" />
            <wire x2="2832" y1="432" y2="592" x1="2832" />
            <wire x2="2928" y1="592" y2="592" x1="2832" />
        </branch>
        <instance x="2000" y="240" name="XLXI_32" orien="R0">
        </instance>
        <instance x="2064" y="2048" name="XLXI_33" orien="R0">
        </instance>
        <branch name="XLXN_123">
            <wire x2="1568" y1="1040" y2="1040" x1="1088" />
            <wire x2="1568" y1="1040" y2="1504" x1="1568" />
            <wire x2="2064" y1="1504" y2="1504" x1="1568" />
        </branch>
        <branch name="XLXN_124(3:0)">
            <wire x2="1168" y1="1168" y2="1168" x1="1088" />
            <wire x2="1168" y1="1168" y2="1568" x1="1168" />
            <wire x2="2064" y1="1568" y2="1568" x1="1168" />
        </branch>
        <branch name="XLXN_125(3:0)">
            <wire x2="1552" y1="1104" y2="1104" x1="1088" />
            <wire x2="1552" y1="1104" y2="1632" x1="1552" />
            <wire x2="2064" y1="1632" y2="1632" x1="1552" />
        </branch>
        <branch name="XLXN_126(11:0)">
            <wire x2="1536" y1="848" y2="848" x1="1088" />
            <wire x2="1536" y1="848" y2="1696" x1="1536" />
            <wire x2="2064" y1="1696" y2="1696" x1="1536" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2544" y1="1504" y2="1504" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1504" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="2544" y1="1568" y2="1568" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1568" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="2544" y1="1632" y2="1632" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1632" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="2544" y1="1696" y2="1696" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1696" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="2544" y1="1760" y2="1760" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1760" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="2544" y1="1824" y2="1824" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1824" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="2544" y1="1888" y2="1888" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1888" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2544" y1="1952" y2="1952" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1952" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="2544" y1="2016" y2="2016" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="2016" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="2544" y1="2080" y2="2080" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="2080" name="FPGA_INIT_B" orien="R0" />
        <branch name="XLXN_138(12:0)">
            <wire x2="672" y1="768" y2="768" x1="512" />
            <wire x2="512" y1="768" y2="2304" x1="512" />
            <wire x2="2800" y1="2304" y2="2304" x1="512" />
            <wire x2="2800" y1="592" y2="592" x1="2464" />
            <wire x2="2800" y1="592" y2="2304" x1="2800" />
        </branch>
        <branch name="XLXN_139">
            <wire x2="592" y1="32" y2="704" x1="592" />
            <wire x2="672" y1="704" y2="704" x1="592" />
            <wire x2="2528" y1="32" y2="32" x1="592" />
            <wire x2="2528" y1="32" y2="528" x1="2528" />
            <wire x2="2528" y1="528" y2="528" x1="2464" />
        </branch>
    </sheet>
</drawing>