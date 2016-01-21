<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_278" />
        <signal name="XLXN_281" />
        <signal name="XLXN_283" />
        <signal name="XLXN_287" />
        <signal name="XLXN_288" />
        <signal name="XLXN_308" />
        <signal name="XLXN_348" />
        <signal name="XLXN_388" />
        <signal name="XLXN_409" />
        <signal name="XLXN_411" />
        <signal name="XLXN_415" />
        <signal name="XLXN_417" />
        <signal name="XLXN_419" />
        <signal name="XLXN_422" />
        <signal name="XLXN_441" />
        <signal name="DIP2" />
        <signal name="XLXN_236(19:0)" />
        <signal name="DIP1" />
        <signal name="XLXN_151" />
        <signal name="XLXN_152(3:0)" />
        <signal name="XLXN_153" />
        <signal name="XLXN_156(3:0)" />
        <signal name="XLXN_157" />
        <signal name="XLXN_158(3:0)" />
        <signal name="XLXN_159" />
        <signal name="XLXN_160(3:0)" />
        <signal name="XLXN_161" />
        <signal name="XLXN_162(3:0)" />
        <signal name="XLXN_167" />
        <signal name="XLXN_166" />
        <signal name="IO_4" />
        <signal name="clk" />
        <signal name="cln1" />
        <signal name="XLXN_481" />
        <signal name="XLXN_163" />
        <signal name="XLXN_155" />
        <signal name="XLXN_154(3:0)" />
        <signal name="DS5_dp" />
        <signal name="DS4_dp" />
        <signal name="DS3_dp" />
        <signal name="DS2_dp" />
        <signal name="DS1_dp" />
        <signal name="cln2" />
        <signal name="DS4(6:0)" />
        <signal name="DS3(6:0)" />
        <signal name="DS2(6:0)" />
        <signal name="DS1(6:0)" />
        <signal name="DS5(6:0)" />
        <signal name="DS6(6:0)" />
        <signal name="phase_n" />
        <signal name="LD1" />
        <signal name="XLXN_147" />
        <signal name="XLXN_168" />
        <signal name="XLXN_169" />
        <signal name="XLXN_63" />
        <port polarity="Input" name="DIP2" />
        <port polarity="Input" name="DIP1" />
        <port polarity="Input" name="IO_4" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="cln1" />
        <port polarity="Output" name="DS5_dp" />
        <port polarity="Output" name="DS4_dp" />
        <port polarity="Output" name="DS3_dp" />
        <port polarity="Output" name="DS2_dp" />
        <port polarity="Output" name="DS1_dp" />
        <port polarity="Output" name="cln2" />
        <port polarity="Output" name="DS4(6:0)" />
        <port polarity="Output" name="DS3(6:0)" />
        <port polarity="Output" name="DS2(6:0)" />
        <port polarity="Output" name="DS1(6:0)" />
        <port polarity="Output" name="DS5(6:0)" />
        <port polarity="Output" name="DS6(6:0)" />
        <port polarity="Output" name="phase_n" />
        <port polarity="Output" name="LD1" />
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
        <block symbolname="buf" name="XLXI_82">
            <blockpin signalname="XLXN_163" name="I" />
            <blockpin signalname="cln1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_52">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS5_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_51">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS4_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_32">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS3_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_31">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS2_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_30">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="DS1_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_29">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="cln2" name="O" />
        </block>
        <block symbolname="hex2seg" name="XLXI_23">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS2(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_159" name="en" />
            <blockpin signalname="XLXN_160(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_22">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS3(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_157" name="en" />
            <blockpin signalname="XLXN_158(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_21">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS4(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_155" name="en" />
            <blockpin signalname="XLXN_156(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_20">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS5(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_153" name="en" />
            <blockpin signalname="XLXN_154(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_24">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS1(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_161" name="en" />
            <blockpin signalname="XLXN_162(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="buf" name="XLXI_48">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="phase_n" name="O" />
        </block>
        <block symbolname="hex2seg" name="XLXI_19">
            <blockpin signalname="XLXN_147" name="clk" />
            <blockpin signalname="DS6(6:0)" name="seg(6:0)" />
            <blockpin signalname="XLXN_151" name="en" />
            <blockpin signalname="XLXN_152(3:0)" name="hex(3:0)" />
        </block>
        <block symbolname="serparlatch" name="XLXI_83">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_166" name="shift_out" />
            <blockpin signalname="XLXN_167" name="shift_down" />
            <blockpin signalname="XLXN_168" name="clear" />
            <blockpin signalname="XLXN_169" name="serial_in" />
            <blockpin signalname="XLXN_236(19:0)" name="parallel_output(19:0)" />
        </block>
        <block symbolname="divider" name="XLXI_68">
            <blockpin signalname="clk" name="fclk" />
            <blockpin signalname="XLXN_147" name="fclkn" />
        </block>
        <block symbolname="gnd" name="XLXI_84">
            <blockpin signalname="XLXN_168" name="G" />
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
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1952" y="1600" name="XLXI_70" orien="R0">
        </instance>
        <instance x="2064" y="1360" name="XLXI_82" orien="R0" />
        <instance x="2960" y="2544" name="XLXI_52" orien="R0" />
        <instance x="2960" y="2464" name="XLXI_51" orien="R0" />
        <instance x="2960" y="2384" name="XLXI_32" orien="R0" />
        <instance x="2960" y="2304" name="XLXI_31" orien="R0" />
        <instance x="2960" y="2224" name="XLXI_30" orien="R0" />
        <instance x="2960" y="2144" name="XLXI_29" orien="R0" />
        <instance x="2992" y="1632" name="XLXI_23" orien="R0">
        </instance>
        <instance x="2992" y="1376" name="XLXI_22" orien="R0">
        </instance>
        <instance x="2992" y="1104" name="XLXI_21" orien="R0">
        </instance>
        <instance x="2992" y="848" name="XLXI_20" orien="R0">
        </instance>
        <instance x="2992" y="1904" name="XLXI_24" orien="R0">
        </instance>
        <instance x="2960" y="2048" name="XLXI_48" orien="R0" />
        <instance x="2992" y="624" name="XLXI_19" orien="R0">
        </instance>
        <branch name="DIP2">
            <wire x2="1952" y1="832" y2="832" x1="1920" />
        </branch>
        <branch name="XLXN_236(19:0)">
            <wire x2="1952" y1="896" y2="896" x1="1760" />
        </branch>
        <branch name="DIP1">
            <wire x2="1952" y1="800" y2="800" x1="1920" />
        </branch>
        <branch name="XLXN_151">
            <wire x2="2656" y1="800" y2="800" x1="2336" />
            <wire x2="2656" y1="496" y2="800" x1="2656" />
            <wire x2="2992" y1="496" y2="496" x1="2656" />
        </branch>
        <branch name="XLXN_152(3:0)">
            <wire x2="2672" y1="832" y2="832" x1="2336" />
            <wire x2="2672" y1="528" y2="832" x1="2672" />
            <wire x2="2992" y1="528" y2="528" x1="2672" />
        </branch>
        <branch name="XLXN_153">
            <wire x2="2688" y1="864" y2="864" x1="2336" />
            <wire x2="2688" y1="720" y2="864" x1="2688" />
            <wire x2="2992" y1="720" y2="720" x1="2688" />
        </branch>
        <branch name="XLXN_156(3:0)">
            <wire x2="2640" y1="960" y2="960" x1="2336" />
            <wire x2="2640" y1="960" y2="1008" x1="2640" />
            <wire x2="2992" y1="1008" y2="1008" x1="2640" />
        </branch>
        <branch name="XLXN_157">
            <wire x2="2624" y1="992" y2="992" x1="2336" />
            <wire x2="2624" y1="992" y2="1248" x1="2624" />
            <wire x2="2992" y1="1248" y2="1248" x1="2624" />
        </branch>
        <branch name="XLXN_158(3:0)">
            <wire x2="2608" y1="1024" y2="1024" x1="2336" />
            <wire x2="2608" y1="1024" y2="1280" x1="2608" />
            <wire x2="2992" y1="1280" y2="1280" x1="2608" />
        </branch>
        <branch name="XLXN_159">
            <wire x2="2592" y1="1056" y2="1056" x1="2336" />
            <wire x2="2592" y1="1056" y2="1504" x1="2592" />
            <wire x2="2992" y1="1504" y2="1504" x1="2592" />
        </branch>
        <branch name="XLXN_160(3:0)">
            <wire x2="2576" y1="1088" y2="1088" x1="2336" />
            <wire x2="2576" y1="1088" y2="1536" x1="2576" />
            <wire x2="2992" y1="1536" y2="1536" x1="2576" />
        </branch>
        <branch name="XLXN_161">
            <wire x2="2560" y1="1120" y2="1120" x1="2336" />
            <wire x2="2560" y1="1120" y2="1776" x1="2560" />
            <wire x2="2992" y1="1776" y2="1776" x1="2560" />
        </branch>
        <branch name="XLXN_162(3:0)">
            <wire x2="2512" y1="1152" y2="1152" x1="2336" />
            <wire x2="2512" y1="1152" y2="1808" x1="2512" />
            <wire x2="2992" y1="1808" y2="1808" x1="2512" />
        </branch>
        <branch name="XLXN_167">
            <wire x2="1296" y1="1024" y2="1024" x1="1152" />
        </branch>
        <branch name="XLXN_166">
            <wire x2="1296" y1="960" y2="960" x1="1152" />
        </branch>
        <branch name="IO_4">
            <wire x2="352" y1="960" y2="960" x1="224" />
            <wire x2="768" y1="960" y2="960" x1="352" />
            <wire x2="352" y1="960" y2="1024" x1="352" />
        </branch>
        <branch name="clk">
            <wire x2="752" y1="304" y2="304" x1="208" />
            <wire x2="1280" y1="304" y2="304" x1="752" />
            <wire x2="1280" y1="304" y2="896" x1="1280" />
            <wire x2="1296" y1="896" y2="896" x1="1280" />
            <wire x2="1344" y1="304" y2="304" x1="1280" />
            <wire x2="752" y1="304" y2="896" x1="752" />
            <wire x2="768" y1="896" y2="896" x1="752" />
        </branch>
        <branch name="cln1">
            <wire x2="2320" y1="1328" y2="1328" x1="2288" />
        </branch>
        <branch name="XLXN_163">
            <wire x2="2000" y1="1248" y2="1328" x1="2000" />
            <wire x2="2064" y1="1328" y2="1328" x1="2000" />
            <wire x2="2352" y1="1248" y2="1248" x1="2000" />
            <wire x2="2352" y1="1184" y2="1184" x1="2336" />
            <wire x2="2352" y1="1184" y2="1248" x1="2352" />
        </branch>
        <branch name="XLXN_155">
            <wire x2="2656" y1="928" y2="928" x1="2336" />
            <wire x2="2656" y1="928" y2="976" x1="2656" />
            <wire x2="2992" y1="976" y2="976" x1="2656" />
        </branch>
        <branch name="XLXN_154(3:0)">
            <wire x2="2704" y1="896" y2="896" x1="2336" />
            <wire x2="2704" y1="752" y2="896" x1="2704" />
            <wire x2="2992" y1="752" y2="752" x1="2704" />
        </branch>
        <branch name="DS5_dp">
            <wire x2="3216" y1="2512" y2="2512" x1="3184" />
        </branch>
        <branch name="DS4_dp">
            <wire x2="3216" y1="2432" y2="2432" x1="3184" />
        </branch>
        <branch name="DS3_dp">
            <wire x2="3216" y1="2352" y2="2352" x1="3184" />
        </branch>
        <branch name="DS2_dp">
            <wire x2="3216" y1="2272" y2="2272" x1="3184" />
        </branch>
        <branch name="DS1_dp">
            <wire x2="3216" y1="2192" y2="2192" x1="3184" />
        </branch>
        <branch name="cln2">
            <wire x2="3216" y1="2112" y2="2112" x1="3184" />
        </branch>
        <branch name="DS4(6:0)">
            <wire x2="3408" y1="944" y2="944" x1="3376" />
        </branch>
        <branch name="DS3(6:0)">
            <wire x2="3408" y1="1216" y2="1216" x1="3376" />
        </branch>
        <branch name="DS2(6:0)">
            <wire x2="3408" y1="1472" y2="1472" x1="3376" />
        </branch>
        <branch name="DS1(6:0)">
            <wire x2="3408" y1="1744" y2="1744" x1="3376" />
        </branch>
        <branch name="DS5(6:0)">
            <wire x2="3408" y1="688" y2="688" x1="3376" />
        </branch>
        <branch name="DS6(6:0)">
            <wire x2="3408" y1="464" y2="464" x1="3376" />
        </branch>
        <branch name="phase_n">
            <wire x2="3216" y1="2016" y2="2016" x1="3184" />
        </branch>
        <branch name="LD1">
            <wire x2="592" y1="1024" y2="1024" x1="576" />
        </branch>
        <branch name="XLXN_147">
            <wire x2="1776" y1="304" y2="304" x1="1728" />
            <wire x2="2864" y1="304" y2="304" x1="1776" />
            <wire x2="2864" y1="304" y2="464" x1="2864" />
            <wire x2="2864" y1="464" y2="688" x1="2864" />
            <wire x2="2864" y1="688" y2="944" x1="2864" />
            <wire x2="2864" y1="944" y2="1216" x1="2864" />
            <wire x2="2864" y1="1216" y2="1472" x1="2864" />
            <wire x2="2864" y1="1472" y2="1744" x1="2864" />
            <wire x2="2864" y1="1744" y2="2016" x1="2864" />
            <wire x2="2960" y1="2016" y2="2016" x1="2864" />
            <wire x2="2864" y1="2016" y2="2112" x1="2864" />
            <wire x2="2864" y1="2112" y2="2192" x1="2864" />
            <wire x2="2960" y1="2192" y2="2192" x1="2864" />
            <wire x2="2864" y1="2192" y2="2272" x1="2864" />
            <wire x2="2864" y1="2272" y2="2352" x1="2864" />
            <wire x2="2864" y1="2352" y2="2432" x1="2864" />
            <wire x2="2864" y1="2432" y2="2512" x1="2864" />
            <wire x2="2960" y1="2512" y2="2512" x1="2864" />
            <wire x2="2960" y1="2432" y2="2432" x1="2864" />
            <wire x2="2960" y1="2352" y2="2352" x1="2864" />
            <wire x2="2960" y1="2272" y2="2272" x1="2864" />
            <wire x2="2960" y1="2112" y2="2112" x1="2864" />
            <wire x2="2992" y1="1744" y2="1744" x1="2864" />
            <wire x2="2992" y1="1472" y2="1472" x1="2864" />
            <wire x2="2992" y1="1216" y2="1216" x1="2864" />
            <wire x2="2992" y1="944" y2="944" x1="2864" />
            <wire x2="2992" y1="688" y2="688" x1="2864" />
            <wire x2="2992" y1="464" y2="464" x1="2864" />
            <wire x2="1776" y1="304" y2="864" x1="1776" />
            <wire x2="1952" y1="864" y2="864" x1="1776" />
        </branch>
        <instance x="1296" y="1184" name="XLXI_83" orien="R0">
        </instance>
        <text style="fontsize:32;fontname:Arial;textcolor:rgb(255,0,0)" x="1368" y="772">LSB is shifted in first</text>
        <instance x="1344" y="336" name="XLXI_68" orien="R0">
        </instance>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1320" y="380">Divide 32768/400 = 81Hz</text>
        <instance x="1088" y="1216" name="XLXI_84" orien="R0" />
        <branch name="XLXN_168">
            <wire x2="1296" y1="1088" y2="1088" x1="1152" />
        </branch>
        <instance x="768" y="1056" name="XLXI_64" orien="R0">
        </instance>
        <branch name="XLXN_169">
            <wire x2="1216" y1="896" y2="896" x1="1152" />
            <wire x2="1216" y1="896" y2="1152" x1="1216" />
            <wire x2="1296" y1="1152" y2="1152" x1="1216" />
        </branch>
        <instance x="640" y="1152" name="XLXI_65" orien="R0" />
        <branch name="XLXN_63">
            <wire x2="768" y1="1024" y2="1024" x1="704" />
        </branch>
        <instance x="352" y="1056" name="XLXI_69" orien="R0" />
        <iomarker fontsize="28" x="2320" y="1328" name="cln1" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2352" name="DS3_dp" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2512" name="DS5_dp" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2432" name="DS4_dp" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2272" name="DS2_dp" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2192" name="DS1_dp" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2112" name="cln2" orien="R0" />
        <iomarker fontsize="28" x="3408" y="944" name="DS4(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="1216" name="DS3(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="1472" name="DS2(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="1744" name="DS1(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="688" name="DS5(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3408" y="464" name="DS6(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2016" name="phase_n" orien="R0" />
        <iomarker fontsize="28" x="208" y="304" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1920" y="800" name="DIP1" orien="R180" />
        <iomarker fontsize="28" x="1920" y="832" name="DIP2" orien="R180" />
        <iomarker fontsize="28" x="592" y="1024" name="LD1" orien="R0" />
        <iomarker fontsize="28" x="224" y="960" name="IO_4" orien="R180" />
        <text style="fontsize:24;fontname:Arial;textcolor:rgb(0,0,0)" x="2540" y="1948">Connect common (phase_n) and all unused segments (5x decimal point, 1x colon) to the display clock</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2940" y="308">DS6 is the lowest-valued digit on the display</text>
    </sheet>
</drawing>