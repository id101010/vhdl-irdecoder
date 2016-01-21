<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="phase_n" />
        <signal name="DIP1" />
        <signal name="DS6(6:0)" />
        <signal name="DS5(6:0)" />
        <signal name="DS1(6:0)" />
        <signal name="DS2(6:0)" />
        <signal name="DS3(6:0)" />
        <signal name="DS4(6:0)" />
        <signal name="cln2" />
        <signal name="DS1_dp" />
        <signal name="DS2_dp" />
        <signal name="DS3_dp" />
        <signal name="DS4_dp" />
        <signal name="DS5_dp" />
        <signal name="XLXN_147" />
        <signal name="XLXN_151" />
        <signal name="XLXN_152(3:0)" />
        <signal name="XLXN_153" />
        <signal name="XLXN_154(3:0)" />
        <signal name="XLXN_155" />
        <signal name="XLXN_156(3:0)" />
        <signal name="XLXN_157" />
        <signal name="XLXN_158(3:0)" />
        <signal name="XLXN_159" />
        <signal name="XLXN_160(3:0)" />
        <signal name="XLXN_161" />
        <signal name="XLXN_162(3:0)" />
        <signal name="XLXN_163" />
        <signal name="cln1" />
        <signal name="clk" />
        <signal name="XLXN_63" />
        <signal name="IO_4" />
        <signal name="LD1" />
        <signal name="XLXN_169" />
        <signal name="XLXN_166" />
        <signal name="XLXN_167" />
        <signal name="XLXN_168" />
        <signal name="XLXN_209" />
        <signal name="XLXN_236(19:0)" />
        <signal name="DIP2" />
        <port polarity="Output" name="phase_n" />
        <port polarity="Input" name="DIP1" />
        <port polarity="Output" name="DS6(6:0)" />
        <port polarity="Output" name="DS5(6:0)" />
        <port polarity="Output" name="DS1(6:0)" />
        <port polarity="Output" name="DS2(6:0)" />
        <port polarity="Output" name="DS3(6:0)" />
        <port polarity="Output" name="DS4(6:0)" />
        <port polarity="Output" name="cln2" />
        <port polarity="Output" name="DS1_dp" />
        <port polarity="Output" name="DS2_dp" />
        <port polarity="Output" name="DS3_dp" />
        <port polarity="Output" name="DS4_dp" />
        <port polarity="Output" name="DS5_dp" />
        <port polarity="Output" name="cln1" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="IO_4" />
        <port polarity="Output" name="LD1" />
        <port polarity="Input" name="DIP2" />
        <blockdef name="hex2seg">
            <timestamp>2016-1-8T19:19:22</timestamp>
            <rect width="256" x="64" y="-192" height="132" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="decoder">
            <timestamp>2016-1-8T14:57:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divider">
            <timestamp>2016-1-8T17:12:58</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="outputswitcher">
            <timestamp>2016-1-8T19:9:26</timestamp>
            <rect width="256" x="64" y="-832" height="440" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="0" y1="-764" y2="-764" x1="64" />
            <line x2="0" y1="-732" y2="-732" x1="64" />
            <line x2="0" y1="-700" y2="-700" x1="64" />
            <rect width="64" x="320" y="-780" height="24" />
            <line x2="384" y1="-768" y2="-768" x1="320" />
            <line x2="384" y1="-704" y2="-704" x1="320" />
            <rect width="64" x="320" y="-716" height="24" />
            <rect width="64" x="320" y="-652" height="24" />
            <line x2="384" y1="-640" y2="-640" x1="320" />
            <rect width="64" x="320" y="-588" height="24" />
            <line x2="384" y1="-576" y2="-576" x1="320" />
            <rect width="64" x="320" y="-524" height="24" />
            <line x2="384" y1="-512" y2="-512" x1="320" />
            <rect width="64" x="320" y="-460" height="24" />
            <line x2="384" y1="-448" y2="-448" x1="320" />
            <rect width="64" x="0" y="-712" height="24" />
        </blockdef>
        <blockdef name="serparlatch">
            <timestamp>2016-1-21T0:2:33</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
        </blockdef>
        <block symbolname="divider" name="XLXI_68">
            <blockpin signalname="clk" name="fclk" />
            <blockpin signalname="XLXN_147" name="fclkn" />
        </block>
        <block symbolname="hex2seg" name="XLXI_19">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS6(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_151" name="en" />
            <blockpin signalname="XLXN_152(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="buf" name="XLXI_48">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="phase_n" name="O" />
        </block>
        <block symbolname="outputswitcher" name="XLXI_70">
            <blockpin signalname="DIP1" name="sel_raw" />
            <blockpin signalname="XLXN_151" name="seg6_en" />
            <blockpin signalname="XLXN_153" name="seg5_en" />
            <blockpin signalname="XLXN_155" name="seg4_en" />
            <blockpin signalname="XLXN_157" name="seg3_en" />
            <blockpin signalname="XLXN_159" name="seg2_en" />
            <blockpin signalname="XLXN_161" name="seg1_en" />
            <blockpin signalname="XLXN_163" name="dp" />
            <blockpin signalname="XLXN_152(3:0)" name="seg6(3:0)" />
            <blockpin signalname="XLXN_154(3:0)" name="seg5(3:0)" />
            <blockpin signalname="XLXN_156(3:0)" name="seg4(3:0)" />
            <blockpin signalname="XLXN_158(3:0)" name="seg3(3:0)" />
            <blockpin signalname="XLXN_160(3:0)" name="seg2(3:0)" />
            <blockpin signalname="XLXN_162(3:0)" name="seg1(3:0)" />
            <blockpin signalname="DIP2" name="sel_decoded" />
            <blockpin signalname="XLXN_147" name="dclk" />
            <blockpin signalname="XLXN_236(19:0)" name="data(19:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_24">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS1(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_161" name="en" />
            <blockpin signalname="XLXN_162(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_20">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS5(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_153" name="en" />
            <blockpin signalname="XLXN_154(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_21">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS4(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_155" name="en" />
            <blockpin signalname="XLXN_156(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_22">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS3(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_157" name="en" />
            <blockpin signalname="XLXN_158(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_23">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS2(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_159" name="en" />
            <blockpin signalname="XLXN_160(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="buf" name="XLXI_29">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="cln2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_30">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS1_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_31">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS2_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_32">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS3_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_51">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS4_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_52">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS5_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_82">
            <blockpin signalname="XLXN_163" name="I" />
            <blockpin signalname="cln1" name="O" />
        </block>
        <block symbolname="decoder" name="XLXI_64">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="IO_4" name="data_in" />
            <blockpin signalname="XLXN_63" name="reset" />
            <blockpin signalname="XLXN_169" name="data_out" />
            <blockpin signalname="XLXN_166" name="frame_detect" />
            <blockpin signalname="XLXN_167" name="latch_enable" />
        </block>
        <block symbolname="gnd" name="XLXI_65">
            <blockpin signalname="XLXN_63" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_69">
            <blockpin signalname="IO_4" name="I" />
            <blockpin signalname="LD1" name="O" />
        </block>
        <block symbolname="serparlatch" name="XLXI_83">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_166" name="shift_out" />
            <blockpin signalname="XLXN_167" name="shift_down" />
            <blockpin signalname="XLXN_168" name="clear" />
            <blockpin signalname="XLXN_169" name="serial_in" />
            <blockpin signalname="XLXN_236(19:0)" name="parallel_output(19:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_84">
            <blockpin signalname="XLXN_168" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="2160" y="464" name="XLXI_68" orien="R0">
        </instance>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2136" y="504">Divide 32768/400 = 81Hz</text>
        <iomarker fontsize="28" x="1024" y="432" name="clk" orien="R180" />
        <instance x="4032" y="976" name="XLXI_19" orien="R0">
        </instance>
        <branch name="phase_n">
            <wire x2="4256" y1="2368" y2="2368" x1="4224" />
        </branch>
        <instance x="4000" y="2400" name="XLXI_48" orien="R0" />
        <text style="fontsize:24;fontname:Arial;textcolor:rgb(0,0,0)" x="4016" y="2304">Connect common (phase_n) and all unused segments (5x decimal point, 2x colon) to the display clock</text>
        <iomarker fontsize="28" x="4256" y="2368" name="phase_n" orien="R0" />
        <instance x="4032" y="2256" name="XLXI_24" orien="R0">
        </instance>
        <instance x="4032" y="1200" name="XLXI_20" orien="R0">
        </instance>
        <instance x="4032" y="1456" name="XLXI_21" orien="R0">
        </instance>
        <instance x="4032" y="1728" name="XLXI_22" orien="R0">
        </instance>
        <instance x="4032" y="1984" name="XLXI_23" orien="R0">
        </instance>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="4072" y="648">DS6 is the lowest-valued digit on the display</text>
        <branch name="DS6(6:0)">
            <wire x2="4448" y1="816" y2="816" x1="4416" />
        </branch>
        <iomarker fontsize="28" x="4448" y="816" name="DS6(6:0)" orien="R0" />
        <branch name="DS5(6:0)">
            <wire x2="4448" y1="1040" y2="1040" x1="4416" />
        </branch>
        <iomarker fontsize="28" x="4448" y="1040" name="DS5(6:0)" orien="R0" />
        <branch name="DS1(6:0)">
            <wire x2="4448" y1="2096" y2="2096" x1="4416" />
        </branch>
        <iomarker fontsize="28" x="4448" y="2096" name="DS1(6:0)" orien="R0" />
        <branch name="DS2(6:0)">
            <wire x2="4448" y1="1824" y2="1824" x1="4416" />
        </branch>
        <iomarker fontsize="28" x="4448" y="1824" name="DS2(6:0)" orien="R0" />
        <branch name="DS3(6:0)">
            <wire x2="4448" y1="1568" y2="1568" x1="4416" />
        </branch>
        <iomarker fontsize="28" x="4448" y="1568" name="DS3(6:0)" orien="R0" />
        <branch name="DS4(6:0)">
            <wire x2="4448" y1="1296" y2="1296" x1="4416" />
        </branch>
        <iomarker fontsize="28" x="4448" y="1296" name="DS4(6:0)" orien="R0" />
        <instance x="4000" y="2496" name="XLXI_29" orien="R0" />
        <instance x="4000" y="2576" name="XLXI_30" orien="R0" />
        <instance x="4000" y="2656" name="XLXI_31" orien="R0" />
        <instance x="4000" y="2736" name="XLXI_32" orien="R0" />
        <instance x="4000" y="2816" name="XLXI_51" orien="R0" />
        <instance x="4000" y="2896" name="XLXI_52" orien="R0" />
        <branch name="cln2">
            <wire x2="4256" y1="2464" y2="2464" x1="4224" />
        </branch>
        <branch name="DS1_dp">
            <wire x2="4256" y1="2544" y2="2544" x1="4224" />
        </branch>
        <branch name="DS2_dp">
            <wire x2="4256" y1="2624" y2="2624" x1="4224" />
        </branch>
        <branch name="DS3_dp">
            <wire x2="4256" y1="2704" y2="2704" x1="4224" />
        </branch>
        <branch name="DS4_dp">
            <wire x2="4256" y1="2784" y2="2784" x1="4224" />
        </branch>
        <branch name="DS5_dp">
            <wire x2="4256" y1="2864" y2="2864" x1="4224" />
        </branch>
        <iomarker fontsize="28" x="4256" y="2464" name="cln2" orien="R0" />
        <iomarker fontsize="28" x="4256" y="2544" name="DS1_dp" orien="R0" />
        <iomarker fontsize="28" x="4256" y="2624" name="DS2_dp" orien="R0" />
        <iomarker fontsize="28" x="4256" y="2784" name="DS4_dp" orien="R0" />
        <iomarker fontsize="28" x="4256" y="2864" name="DS5_dp" orien="R0" />
        <iomarker fontsize="28" x="4256" y="2704" name="DS3_dp" orien="R0" />
        <branch name="XLXN_154(3:0)">
            <wire x2="3744" y1="1248" y2="1248" x1="3376" />
            <wire x2="3744" y1="1104" y2="1248" x1="3744" />
            <wire x2="4032" y1="1104" y2="1104" x1="3744" />
        </branch>
        <branch name="XLXN_155">
            <wire x2="3696" y1="1280" y2="1280" x1="3376" />
            <wire x2="3696" y1="1280" y2="1328" x1="3696" />
            <wire x2="4032" y1="1328" y2="1328" x1="3696" />
        </branch>
        <instance x="3104" y="1712" name="XLXI_82" orien="R0" />
        <branch name="XLXN_163">
            <wire x2="3040" y1="1600" y2="1680" x1="3040" />
            <wire x2="3104" y1="1680" y2="1680" x1="3040" />
            <wire x2="3392" y1="1600" y2="1600" x1="3040" />
            <wire x2="3392" y1="1536" y2="1536" x1="3376" />
            <wire x2="3392" y1="1536" y2="1600" x1="3392" />
        </branch>
        <branch name="cln1">
            <wire x2="3360" y1="1680" y2="1680" x1="3328" />
        </branch>
        <iomarker fontsize="28" x="3360" y="1680" name="cln1" orien="R0" />
        <branch name="clk">
            <wire x2="1104" y1="432" y2="432" x1="1024" />
            <wire x2="1104" y1="432" y2="1248" x1="1104" />
            <wire x2="1184" y1="1248" y2="1248" x1="1104" />
            <wire x2="2000" y1="432" y2="432" x1="1104" />
            <wire x2="2000" y1="432" y2="1248" x1="2000" />
            <wire x2="2080" y1="1248" y2="1248" x1="2000" />
            <wire x2="2160" y1="432" y2="432" x1="2000" />
        </branch>
        <instance x="1184" y="1408" name="XLXI_64" orien="R0">
        </instance>
        <instance x="960" y="1536" name="XLXI_65" orien="R0" />
        <branch name="XLXN_63">
            <wire x2="1184" y1="1376" y2="1376" x1="1024" />
            <wire x2="1024" y1="1376" y2="1408" x1="1024" />
        </branch>
        <branch name="IO_4">
            <wire x2="576" y1="1312" y2="1312" x1="544" />
            <wire x2="576" y1="1312" y2="1376" x1="576" />
            <wire x2="624" y1="1376" y2="1376" x1="576" />
            <wire x2="1184" y1="1312" y2="1312" x1="576" />
        </branch>
        <instance x="624" y="1408" name="XLXI_69" orien="R0" />
        <branch name="LD1">
            <wire x2="880" y1="1376" y2="1376" x1="848" />
        </branch>
        <text style="textcolor:rgb(255,0,0)" x="1760" y="1068">LSB is shifted in frist. The serpar buf will automatically reverse the order of the bits so that the LSB is in the correct position afterwards</text>
        <branch name="XLXN_169">
            <wire x2="1824" y1="1248" y2="1248" x1="1568" />
            <wire x2="1824" y1="1248" y2="1504" x1="1824" />
            <wire x2="2080" y1="1504" y2="1504" x1="1824" />
        </branch>
        <branch name="XLXN_166">
            <wire x2="2080" y1="1312" y2="1312" x1="1568" />
        </branch>
        <branch name="XLXN_167">
            <wire x2="2080" y1="1376" y2="1376" x1="1568" />
        </branch>
        <instance x="2080" y="1536" name="XLXI_83" orien="R0">
        </instance>
        <branch name="XLXN_168">
            <wire x2="1664" y1="1440" y2="1456" x1="1664" />
            <wire x2="2080" y1="1440" y2="1440" x1="1664" />
        </branch>
        <instance x="1600" y="1584" name="XLXI_84" orien="R0" />
        <iomarker fontsize="28" x="544" y="1312" name="IO_4" orien="R180" />
        <iomarker fontsize="28" x="880" y="1376" name="LD1" orien="R0" />
        <branch name="XLXN_162(3:0)">
            <wire x2="3552" y1="1504" y2="1504" x1="3376" />
            <wire x2="3552" y1="1504" y2="2160" x1="3552" />
            <wire x2="4032" y1="2160" y2="2160" x1="3552" />
        </branch>
        <branch name="XLXN_161">
            <wire x2="3600" y1="1472" y2="1472" x1="3376" />
            <wire x2="3600" y1="1472" y2="2128" x1="3600" />
            <wire x2="4032" y1="2128" y2="2128" x1="3600" />
        </branch>
        <branch name="XLXN_160(3:0)">
            <wire x2="3616" y1="1440" y2="1440" x1="3376" />
            <wire x2="3616" y1="1440" y2="1888" x1="3616" />
            <wire x2="4032" y1="1888" y2="1888" x1="3616" />
        </branch>
        <branch name="XLXN_159">
            <wire x2="3632" y1="1408" y2="1408" x1="3376" />
            <wire x2="3632" y1="1408" y2="1856" x1="3632" />
            <wire x2="4032" y1="1856" y2="1856" x1="3632" />
        </branch>
        <branch name="XLXN_158(3:0)">
            <wire x2="3648" y1="1376" y2="1376" x1="3376" />
            <wire x2="3648" y1="1376" y2="1632" x1="3648" />
            <wire x2="4032" y1="1632" y2="1632" x1="3648" />
        </branch>
        <branch name="XLXN_157">
            <wire x2="3664" y1="1344" y2="1344" x1="3376" />
            <wire x2="3664" y1="1344" y2="1600" x1="3664" />
            <wire x2="4032" y1="1600" y2="1600" x1="3664" />
        </branch>
        <branch name="XLXN_156(3:0)">
            <wire x2="3680" y1="1312" y2="1312" x1="3376" />
            <wire x2="3680" y1="1312" y2="1360" x1="3680" />
            <wire x2="4032" y1="1360" y2="1360" x1="3680" />
        </branch>
        <branch name="XLXN_153">
            <wire x2="3728" y1="1216" y2="1216" x1="3376" />
            <wire x2="3728" y1="1072" y2="1216" x1="3728" />
            <wire x2="4032" y1="1072" y2="1072" x1="3728" />
        </branch>
        <branch name="XLXN_152(3:0)">
            <wire x2="3712" y1="1184" y2="1184" x1="3376" />
            <wire x2="3712" y1="880" y2="1184" x1="3712" />
            <wire x2="4032" y1="880" y2="880" x1="3712" />
        </branch>
        <branch name="XLXN_151">
            <wire x2="3696" y1="1152" y2="1152" x1="3376" />
            <wire x2="3696" y1="848" y2="1152" x1="3696" />
            <wire x2="4032" y1="848" y2="848" x1="3696" />
        </branch>
        <branch name="XLXN_147">
            <wire x2="2736" y1="432" y2="432" x1="2544" />
            <wire x2="3904" y1="432" y2="432" x1="2736" />
            <wire x2="3904" y1="432" y2="816" x1="3904" />
            <wire x2="3904" y1="816" y2="1040" x1="3904" />
            <wire x2="3904" y1="1040" y2="1296" x1="3904" />
            <wire x2="3904" y1="1296" y2="1568" x1="3904" />
            <wire x2="3904" y1="1568" y2="1824" x1="3904" />
            <wire x2="3904" y1="1824" y2="2096" x1="3904" />
            <wire x2="3904" y1="2096" y2="2368" x1="3904" />
            <wire x2="4000" y1="2368" y2="2368" x1="3904" />
            <wire x2="3904" y1="2368" y2="2464" x1="3904" />
            <wire x2="3904" y1="2464" y2="2544" x1="3904" />
            <wire x2="4000" y1="2544" y2="2544" x1="3904" />
            <wire x2="3904" y1="2544" y2="2624" x1="3904" />
            <wire x2="3904" y1="2624" y2="2704" x1="3904" />
            <wire x2="3904" y1="2704" y2="2784" x1="3904" />
            <wire x2="3904" y1="2784" y2="2864" x1="3904" />
            <wire x2="4000" y1="2864" y2="2864" x1="3904" />
            <wire x2="4000" y1="2784" y2="2784" x1="3904" />
            <wire x2="4000" y1="2704" y2="2704" x1="3904" />
            <wire x2="4000" y1="2624" y2="2624" x1="3904" />
            <wire x2="4000" y1="2464" y2="2464" x1="3904" />
            <wire x2="4032" y1="2096" y2="2096" x1="3904" />
            <wire x2="4032" y1="1824" y2="1824" x1="3904" />
            <wire x2="4032" y1="1568" y2="1568" x1="3904" />
            <wire x2="4032" y1="1296" y2="1296" x1="3904" />
            <wire x2="4032" y1="1040" y2="1040" x1="3904" />
            <wire x2="4032" y1="816" y2="816" x1="3904" />
            <wire x2="2736" y1="432" y2="1216" x1="2736" />
            <wire x2="2992" y1="1216" y2="1216" x1="2736" />
        </branch>
        <branch name="DIP1">
            <wire x2="2944" y1="1104" y2="1104" x1="2880" />
            <wire x2="2944" y1="1104" y2="1152" x1="2944" />
            <wire x2="2992" y1="1152" y2="1152" x1="2944" />
        </branch>
        <instance x="2992" y="1952" name="XLXI_70" orien="R0">
        </instance>
        <branch name="XLXN_236(19:0)">
            <wire x2="2992" y1="1248" y2="1248" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2880" y="1168" name="DIP2" orien="R180" />
        <iomarker fontsize="28" x="2880" y="1104" name="DIP1" orien="R180" />
        <branch name="DIP2">
            <wire x2="2944" y1="1168" y2="1168" x1="2880" />
            <wire x2="2944" y1="1168" y2="1184" x1="2944" />
            <wire x2="2992" y1="1184" y2="1184" x1="2944" />
        </branch>
    </sheet>
</drawing>