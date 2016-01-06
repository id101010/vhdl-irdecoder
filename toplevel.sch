<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DATA_OUT(19:0)" />
        <signal name="DS6(6:0)" />
        <signal name="DS5(6:0)" />
        <signal name="DS4(6:0)" />
        <signal name="DS3(6:0)" />
        <signal name="DS2(6:0)" />
        <signal name="DS1(6:0)" />
        <signal name="DATA_OUT(3:0)" />
        <signal name="DATA_OUT(7:4)" />
        <signal name="DATA_OUT(11:8)" />
        <signal name="DATA_OUT(15:12)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_12" />
        <signal name="phase_n" />
        <signal name="cln1" />
        <signal name="cln2" />
        <signal name="DS1_dp" />
        <signal name="DS2_dp" />
        <signal name="DS3_dp" />
        <signal name="XLXN_53" />
        <signal name="DS4_dp" />
        <signal name="DS5_dp" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="clk" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <port polarity="Output" name="DS6(6:0)" />
        <port polarity="Output" name="DS5(6:0)" />
        <port polarity="Output" name="DS4(6:0)" />
        <port polarity="Output" name="DS3(6:0)" />
        <port polarity="Output" name="DS2(6:0)" />
        <port polarity="Output" name="DS1(6:0)" />
        <port polarity="Output" name="phase_n" />
        <port polarity="Output" name="cln1" />
        <port polarity="Output" name="cln2" />
        <port polarity="Output" name="DS1_dp" />
        <port polarity="Output" name="DS2_dp" />
        <port polarity="Output" name="DS3_dp" />
        <port polarity="Output" name="DS4_dp" />
        <port polarity="Output" name="DS5_dp" />
        <port polarity="Input" name="clk" />
        <blockdef name="serparbuf">
            <timestamp>2015-12-12T12:0:30</timestamp>
            <rect width="352" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
        </blockdef>
        <blockdef name="hex2seg">
            <timestamp>2015-12-12T13:15:33</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
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
        <blockdef name="clk_div10">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="80" y1="-176" y2="-192" x1="64" />
            <line x2="64" y1="-192" y2="-208" x1="80" />
            <line x2="64" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="clk_div4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="80" y1="-176" y2="-192" x1="64" />
            <line x2="64" y1="-192" y2="-208" x1="80" />
            <line x2="64" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="pulsemeasure">
            <timestamp>2016-1-6T23:33:17</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="irdecoder">
            <timestamp>2016-1-6T23:34:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="serparbuf" name="XLXI_18">
            <blockpin name="DATA_IN" />
            <blockpin signalname="XLXN_12" name="CLEAR" />
            <blockpin name="SHIFT_OUT" />
            <blockpin signalname="XLXN_13" name="ENABLE" />
            <blockpin name="SHIFT_DOWN" />
            <blockpin signalname="DATA_OUT(19:0)" name="DATA_OUT(19:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_23">
            <blockpin signalname="XLXN_53" name="clk" />
            <blockpin name="hex(3:0)" />
            <blockpin signalname="DS2(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_22">
            <blockpin signalname="XLXN_53" name="clk" />
            <blockpin signalname="DATA_OUT(15:12)" name="hex(3:0)" />
            <blockpin signalname="DS3(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_21">
            <blockpin signalname="XLXN_53" name="clk" />
            <blockpin signalname="DATA_OUT(11:8)" name="hex(3:0)" />
            <blockpin signalname="DS4(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_20">
            <blockpin signalname="XLXN_53" name="clk" />
            <blockpin signalname="DATA_OUT(7:4)" name="hex(3:0)" />
            <blockpin signalname="DS5(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_19">
            <blockpin signalname="XLXN_53" name="clk" />
            <blockpin signalname="DATA_OUT(3:0)" name="hex(3:0)" />
            <blockpin signalname="DS6(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_24">
            <blockpin signalname="XLXN_53" name="clk" />
            <blockpin name="hex(3:0)" />
            <blockpin signalname="DS1(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_25">
            <blockpin signalname="XLXN_13" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_26">
            <blockpin signalname="XLXN_12" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_28">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="cln1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_29">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="cln2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_30">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="DS1_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_31">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="DS2_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_32">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="DS3_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_48">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="phase_n" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_51">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="DS4_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_52">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="DS5_dp" name="O" />
        </block>
        <block symbolname="clk_div10" name="XLXI_54">
            <blockpin signalname="clk" name="CLKIN" />
            <blockpin signalname="XLXN_57" name="CLKDV" />
        </block>
        <block symbolname="clk_div10" name="XLXI_55">
            <blockpin signalname="XLXN_57" name="CLKIN" />
            <blockpin signalname="XLXN_58" name="CLKDV" />
        </block>
        <block symbolname="clk_div4" name="XLXI_56">
            <blockpin signalname="XLXN_58" name="CLKIN" />
            <blockpin signalname="XLXN_53" name="CLKDV" />
        </block>
        <block symbolname="irdecoder" name="XLXI_58">
            <blockpin signalname="XLXN_59" name="clk" />
            <blockpin signalname="XLXN_60" name="state" />
            <blockpin name="data_out" />
            <blockpin name="framedetect" />
            <blockpin name="latch_enable" />
        </block>
        <block symbolname="pulsemeasure" name="XLXI_57">
            <blockpin signalname="XLXN_59" name="clk" />
            <blockpin signalname="XLXN_61" name="data_in_ser" />
            <blockpin signalname="XLXN_60" name="data_out_ser" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="3328" y="1056" name="XLXI_18" orien="R0" />
        <instance x="4352" y="1856" name="XLXI_23" orien="R0">
        </instance>
        <instance x="4352" y="1600" name="XLXI_22" orien="R0">
        </instance>
        <instance x="4352" y="1328" name="XLXI_21" orien="R0">
        </instance>
        <instance x="4352" y="1072" name="XLXI_20" orien="R0">
        </instance>
        <instance x="4352" y="848" name="XLXI_19" orien="R0">
        </instance>
        <instance x="4352" y="2128" name="XLXI_24" orien="R0">
        </instance>
        <branch name="DATA_OUT(19:0)">
            <wire x2="4016" y1="768" y2="768" x1="3808" />
            <wire x2="4016" y1="768" y2="816" x1="4016" />
            <wire x2="4016" y1="816" y2="1040" x1="4016" />
            <wire x2="4016" y1="1040" y2="1296" x1="4016" />
            <wire x2="4016" y1="1296" y2="1568" x1="4016" />
        </branch>
        <bustap x2="4112" y1="816" y2="816" x1="4016" />
        <bustap x2="4112" y1="1040" y2="1040" x1="4016" />
        <bustap x2="4112" y1="1296" y2="1296" x1="4016" />
        <bustap x2="4112" y1="1568" y2="1568" x1="4016" />
        <branch name="DS6(6:0)">
            <wire x2="4768" y1="752" y2="752" x1="4736" />
        </branch>
        <text style="textcolor:rgb(255,0,0)" x="3060" y="636">LSB is shifted in frist. The serpar buf will automatically reverse the order of the bits so that the LSB is in the correct position afterwards</text>
        <branch name="DS5(6:0)">
            <wire x2="4768" y1="976" y2="976" x1="4736" />
        </branch>
        <branch name="DS4(6:0)">
            <wire x2="4768" y1="1232" y2="1232" x1="4736" />
        </branch>
        <branch name="DS3(6:0)">
            <wire x2="4768" y1="1504" y2="1504" x1="4736" />
        </branch>
        <branch name="DS2(6:0)">
            <wire x2="4768" y1="1760" y2="1760" x1="4736" />
        </branch>
        <branch name="DS1(6:0)">
            <wire x2="4768" y1="2032" y2="2032" x1="4736" />
        </branch>
        <branch name="DATA_OUT(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4160" y="816" type="branch" />
            <wire x2="4160" y1="816" y2="816" x1="4112" />
            <wire x2="4352" y1="816" y2="816" x1="4160" />
        </branch>
        <branch name="DATA_OUT(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4160" y="1040" type="branch" />
            <wire x2="4160" y1="1040" y2="1040" x1="4112" />
            <wire x2="4352" y1="1040" y2="1040" x1="4160" />
        </branch>
        <branch name="DATA_OUT(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4176" y="1296" type="branch" />
            <wire x2="4176" y1="1296" y2="1296" x1="4112" />
            <wire x2="4352" y1="1296" y2="1296" x1="4176" />
        </branch>
        <branch name="DATA_OUT(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4176" y="1568" type="branch" />
            <wire x2="4176" y1="1568" y2="1568" x1="4112" />
            <wire x2="4352" y1="1568" y2="1568" x1="4176" />
        </branch>
        <instance x="3152" y="960" name="XLXI_25" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="3328" y1="960" y2="960" x1="3216" />
        </branch>
        <instance x="3040" y="960" name="XLXI_26" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="3328" y1="832" y2="832" x1="3104" />
        </branch>
        <instance x="4320" y="2352" name="XLXI_28" orien="R0" />
        <instance x="4320" y="2432" name="XLXI_29" orien="R0" />
        <instance x="4320" y="2512" name="XLXI_30" orien="R0" />
        <instance x="4320" y="2592" name="XLXI_31" orien="R0" />
        <instance x="4320" y="2672" name="XLXI_32" orien="R0" />
        <branch name="phase_n">
            <wire x2="4576" y1="2240" y2="2240" x1="4544" />
        </branch>
        <branch name="cln1">
            <wire x2="4576" y1="2320" y2="2320" x1="4544" />
        </branch>
        <branch name="cln2">
            <wire x2="4576" y1="2400" y2="2400" x1="4544" />
        </branch>
        <branch name="DS1_dp">
            <wire x2="4576" y1="2480" y2="2480" x1="4544" />
        </branch>
        <branch name="DS2_dp">
            <wire x2="4576" y1="2560" y2="2560" x1="4544" />
        </branch>
        <branch name="DS3_dp">
            <wire x2="4576" y1="2640" y2="2640" x1="4544" />
        </branch>
        <iomarker fontsize="28" x="4768" y="752" name="DS6(6:0)" orien="R0" />
        <iomarker fontsize="28" x="4768" y="976" name="DS5(6:0)" orien="R0" />
        <iomarker fontsize="28" x="4768" y="1232" name="DS4(6:0)" orien="R0" />
        <iomarker fontsize="28" x="4768" y="1504" name="DS3(6:0)" orien="R0" />
        <iomarker fontsize="28" x="4768" y="1760" name="DS2(6:0)" orien="R0" />
        <iomarker fontsize="28" x="4768" y="2032" name="DS1(6:0)" orien="R0" />
        <iomarker fontsize="28" x="4576" y="2400" name="cln2" orien="R0" />
        <iomarker fontsize="28" x="4576" y="2480" name="DS1_dp" orien="R0" />
        <iomarker fontsize="28" x="4576" y="2560" name="DS2_dp" orien="R0" />
        <iomarker fontsize="28" x="4576" y="2240" name="phase_n" orien="R0" />
        <iomarker fontsize="28" x="4576" y="2320" name="cln1" orien="R0" />
        <instance x="4320" y="2272" name="XLXI_48" orien="R0" />
        <instance x="4320" y="2752" name="XLXI_51" orien="R0" />
        <instance x="4320" y="2832" name="XLXI_52" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="4304" y1="288" y2="288" x1="4176" />
            <wire x2="4304" y1="288" y2="752" x1="4304" />
            <wire x2="4352" y1="752" y2="752" x1="4304" />
            <wire x2="4304" y1="752" y2="976" x1="4304" />
            <wire x2="4352" y1="976" y2="976" x1="4304" />
            <wire x2="4304" y1="976" y2="1232" x1="4304" />
            <wire x2="4352" y1="1232" y2="1232" x1="4304" />
            <wire x2="4304" y1="1232" y2="1504" x1="4304" />
            <wire x2="4352" y1="1504" y2="1504" x1="4304" />
            <wire x2="4304" y1="1504" y2="1760" x1="4304" />
            <wire x2="4352" y1="1760" y2="1760" x1="4304" />
            <wire x2="4304" y1="1760" y2="2032" x1="4304" />
            <wire x2="4304" y1="2032" y2="2240" x1="4304" />
            <wire x2="4320" y1="2240" y2="2240" x1="4304" />
            <wire x2="4304" y1="2240" y2="2320" x1="4304" />
            <wire x2="4320" y1="2320" y2="2320" x1="4304" />
            <wire x2="4304" y1="2320" y2="2400" x1="4304" />
            <wire x2="4320" y1="2400" y2="2400" x1="4304" />
            <wire x2="4304" y1="2400" y2="2480" x1="4304" />
            <wire x2="4320" y1="2480" y2="2480" x1="4304" />
            <wire x2="4304" y1="2480" y2="2560" x1="4304" />
            <wire x2="4320" y1="2560" y2="2560" x1="4304" />
            <wire x2="4304" y1="2560" y2="2640" x1="4304" />
            <wire x2="4320" y1="2640" y2="2640" x1="4304" />
            <wire x2="4304" y1="2640" y2="2720" x1="4304" />
            <wire x2="4320" y1="2720" y2="2720" x1="4304" />
            <wire x2="4304" y1="2720" y2="2800" x1="4304" />
            <wire x2="4320" y1="2800" y2="2800" x1="4304" />
            <wire x2="4352" y1="2032" y2="2032" x1="4304" />
        </branch>
        <branch name="DS4_dp">
            <wire x2="4576" y1="2720" y2="2720" x1="4544" />
        </branch>
        <iomarker fontsize="28" x="4576" y="2720" name="DS4_dp" orien="R0" />
        <branch name="DS5_dp">
            <wire x2="4576" y1="2800" y2="2800" x1="4544" />
        </branch>
        <iomarker fontsize="28" x="4576" y="2800" name="DS5_dp" orien="R0" />
        <iomarker fontsize="28" x="4576" y="2640" name="DS3_dp" orien="R0" />
        <instance x="2960" y="480" name="XLXI_54" orien="R0" />
        <branch name="XLXN_57">
            <wire x2="3376" y1="288" y2="288" x1="3344" />
        </branch>
        <instance x="3376" y="480" name="XLXI_55" orien="R0" />
        <branch name="XLXN_58">
            <wire x2="3792" y1="288" y2="288" x1="3760" />
        </branch>
        <instance x="3792" y="480" name="XLXI_56" orien="R0" />
        <branch name="clk">
            <wire x2="2960" y1="288" y2="288" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="2928" y="288" name="clk" orien="R180" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="4392" y="620">DS6 is the lowest-valued digit on the display</text>
        <text style="fontsize:24;fontname:Arial;textcolor:rgb(0,0,0)" x="4336" y="2176">Connect common (phase_n) and all unused segments (5x decimal point, 2x colon) to the display clock</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2984" y="460">Divide 32768/400 = 81Hz</text>
        <text style="fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" x="3508" y="1104">WTF is this ?!</text>
        <instance x="1424" y="1200" name="XLXI_58" orien="R0">
        </instance>
        <instance x="784" y="1264" name="XLXI_57" orien="R0">
        </instance>
        <branch name="XLXN_59">
            <wire x2="768" y1="944" y2="1168" x1="768" />
            <wire x2="784" y1="1168" y2="1168" x1="768" />
            <wire x2="1424" y1="944" y2="944" x1="768" />
            <wire x2="1424" y1="944" y2="1040" x1="1424" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1424" y1="1168" y2="1168" x1="1168" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="784" y1="1232" y2="1232" x1="416" />
        </branch>
    </sheet>
</drawing>