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
        <signal name="phase_n" />
        <signal name="cln1" />
        <signal name="cln2" />
        <signal name="DS1_dp" />
        <signal name="DS2_dp" />
        <signal name="DS3_dp" />
        <signal name="XLXN_53" />
        <signal name="DS4_dp" />
        <signal name="DS5_dp" />
        <signal name="clk" />
        <signal name="XLXN_84" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_12" />
        <signal name="XLXN_63" />
        <signal name="IO_4" />
        <signal name="XLXN_64(3:0)" />
        <signal name="XLXN_65(3:0)" />
        <signal name="XLXN_64(3)" />
        <signal name="XLXN_64(2)" />
        <signal name="XLXN_64(1)" />
        <signal name="XLXN_64(0)" />
        <signal name="XLXN_65(3)" />
        <signal name="XLXN_65(2)" />
        <signal name="XLXN_65(1)" />
        <signal name="XLXN_65(0)" />
        <signal name="sw1" />
        <signal name="sw2" />
        <signal name="sw3" />
        <signal name="sw4" />
        <signal name="DIP1" />
        <signal name="DIP2" />
        <signal name="DIP3" />
        <signal name="DIP4" />
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
        <port polarity="Input" name="IO_4" />
        <port polarity="Input" name="sw1" />
        <port polarity="Input" name="sw2" />
        <port polarity="Input" name="sw3" />
        <port polarity="Input" name="sw4" />
        <port polarity="Input" name="DIP1" />
        <port polarity="Input" name="DIP2" />
        <port polarity="Input" name="DIP3" />
        <port polarity="Input" name="DIP4" />
        <blockdef name="serparbuf">
            <timestamp>2016-1-8T13:57:4</timestamp>
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
            <timestamp>2016-1-8T17:4:35</timestamp>
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
        <blockdef name="buf4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="128" y1="-224" y2="-224" x1="224" />
            <line x2="128" y1="-160" y2="-160" x1="224" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="128" y1="-96" y2="-96" x1="224" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="divider">
            <timestamp>2016-1-8T17:12:58</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="serparbuf" name="XLXI_18">
            <blockpin signalname="XLXN_59" name="DATA_IN" />
            <blockpin signalname="XLXN_12" name="CLEAR" />
            <blockpin signalname="XLXN_61" name="SHIFT_OUT" />
            <blockpin signalname="XLXN_13" name="ENABLE" />
            <blockpin signalname="XLXN_60" name="SHIFT_DOWN" />
            <blockpin signalname="DATA_OUT(19:0)" name="DATA_OUT(19:0)" />
        </block>
        <block symbolname="hex2seg" name="XLXI_23">
            <blockpin signalname="XLXN_53" name="clk" />
            <blockpin signalname="XLXN_64(3:0)" name="hex(3:0)" />
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
            <blockpin signalname="XLXN_65(3:0)" name="hex(3:0)" />
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
        <block symbolname="decoder" name="XLXI_64">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="IO_4" name="data_in" />
            <blockpin signalname="XLXN_63" name="reset" />
            <blockpin signalname="XLXN_59" name="data_out" />
            <blockpin signalname="XLXN_61" name="frame_detect" />
            <blockpin signalname="XLXN_60" name="latch_enable" />
        </block>
        <block symbolname="gnd" name="XLXI_65">
            <blockpin signalname="XLXN_63" name="G" />
        </block>
        <block symbolname="buf4" name="XLXI_66">
            <blockpin signalname="sw1" name="I0" />
            <blockpin signalname="sw2" name="I1" />
            <blockpin signalname="sw3" name="I2" />
            <blockpin signalname="sw4" name="I3" />
            <blockpin signalname="XLXN_64(3)" name="O0" />
            <blockpin signalname="XLXN_64(2)" name="O1" />
            <blockpin signalname="XLXN_64(1)" name="O2" />
            <blockpin signalname="XLXN_64(0)" name="O3" />
        </block>
        <block symbolname="buf4" name="XLXI_67">
            <blockpin signalname="DIP1" name="I0" />
            <blockpin signalname="DIP2" name="I1" />
            <blockpin signalname="DIP3" name="I2" />
            <blockpin signalname="DIP4" name="I3" />
            <blockpin signalname="XLXN_65(3)" name="O0" />
            <blockpin signalname="XLXN_65(2)" name="O1" />
            <blockpin signalname="XLXN_65(1)" name="O2" />
            <blockpin signalname="XLXN_65(0)" name="O3" />
        </block>
        <block symbolname="divider" name="XLXI_68">
            <blockpin signalname="clk" name="fclk" />
            <blockpin signalname="XLXN_53" name="fclkn" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="2416" y="1200" name="XLXI_18" orien="R0">
        </instance>
        <instance x="3440" y="2000" name="XLXI_23" orien="R0">
        </instance>
        <instance x="3440" y="1744" name="XLXI_22" orien="R0">
        </instance>
        <instance x="3440" y="1472" name="XLXI_21" orien="R0">
        </instance>
        <instance x="3440" y="1216" name="XLXI_20" orien="R0">
        </instance>
        <instance x="3440" y="992" name="XLXI_19" orien="R0">
        </instance>
        <instance x="3440" y="2272" name="XLXI_24" orien="R0">
        </instance>
        <branch name="DATA_OUT(19:0)">
            <wire x2="3104" y1="912" y2="912" x1="2896" />
            <wire x2="3104" y1="912" y2="960" x1="3104" />
            <wire x2="3104" y1="960" y2="1184" x1="3104" />
            <wire x2="3104" y1="1184" y2="1440" x1="3104" />
            <wire x2="3104" y1="1440" y2="1712" x1="3104" />
        </branch>
        <bustap x2="3200" y1="960" y2="960" x1="3104" />
        <bustap x2="3200" y1="1184" y2="1184" x1="3104" />
        <bustap x2="3200" y1="1440" y2="1440" x1="3104" />
        <bustap x2="3200" y1="1712" y2="1712" x1="3104" />
        <branch name="DS6(6:0)">
            <wire x2="3856" y1="896" y2="896" x1="3824" />
        </branch>
        <text style="textcolor:rgb(255,0,0)" x="2148" y="780">LSB is shifted in frist. The serpar buf will automatically reverse the order of the bits so that the LSB is in the correct position afterwards</text>
        <branch name="DS5(6:0)">
            <wire x2="3856" y1="1120" y2="1120" x1="3824" />
        </branch>
        <branch name="DS4(6:0)">
            <wire x2="3856" y1="1376" y2="1376" x1="3824" />
        </branch>
        <branch name="DS3(6:0)">
            <wire x2="3856" y1="1648" y2="1648" x1="3824" />
        </branch>
        <branch name="DS2(6:0)">
            <wire x2="3856" y1="1904" y2="1904" x1="3824" />
        </branch>
        <branch name="DS1(6:0)">
            <wire x2="3856" y1="2176" y2="2176" x1="3824" />
        </branch>
        <branch name="DATA_OUT(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="960" type="branch" />
            <wire x2="3248" y1="960" y2="960" x1="3200" />
            <wire x2="3440" y1="960" y2="960" x1="3248" />
        </branch>
        <branch name="DATA_OUT(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1184" type="branch" />
            <wire x2="3248" y1="1184" y2="1184" x1="3200" />
            <wire x2="3440" y1="1184" y2="1184" x1="3248" />
        </branch>
        <branch name="DATA_OUT(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="1440" type="branch" />
            <wire x2="3264" y1="1440" y2="1440" x1="3200" />
            <wire x2="3440" y1="1440" y2="1440" x1="3264" />
        </branch>
        <branch name="DATA_OUT(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="1712" type="branch" />
            <wire x2="3264" y1="1712" y2="1712" x1="3200" />
            <wire x2="3440" y1="1712" y2="1712" x1="3264" />
        </branch>
        <instance x="2240" y="1104" name="XLXI_25" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="2416" y1="1104" y2="1104" x1="2304" />
        </branch>
        <instance x="2128" y="1104" name="XLXI_26" orien="R0" />
        <instance x="3408" y="2496" name="XLXI_28" orien="R0" />
        <instance x="3408" y="2576" name="XLXI_29" orien="R0" />
        <instance x="3408" y="2656" name="XLXI_30" orien="R0" />
        <instance x="3408" y="2736" name="XLXI_31" orien="R0" />
        <instance x="3408" y="2816" name="XLXI_32" orien="R0" />
        <branch name="phase_n">
            <wire x2="3664" y1="2384" y2="2384" x1="3632" />
        </branch>
        <branch name="cln1">
            <wire x2="3664" y1="2464" y2="2464" x1="3632" />
        </branch>
        <branch name="cln2">
            <wire x2="3664" y1="2544" y2="2544" x1="3632" />
        </branch>
        <branch name="DS1_dp">
            <wire x2="3664" y1="2624" y2="2624" x1="3632" />
        </branch>
        <branch name="DS2_dp">
            <wire x2="3664" y1="2704" y2="2704" x1="3632" />
        </branch>
        <branch name="DS3_dp">
            <wire x2="3664" y1="2784" y2="2784" x1="3632" />
        </branch>
        <instance x="3408" y="2416" name="XLXI_48" orien="R0" />
        <instance x="3408" y="2896" name="XLXI_51" orien="R0" />
        <instance x="3408" y="2976" name="XLXI_52" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="3392" y1="432" y2="432" x1="2544" />
            <wire x2="3392" y1="432" y2="896" x1="3392" />
            <wire x2="3440" y1="896" y2="896" x1="3392" />
            <wire x2="3392" y1="896" y2="1120" x1="3392" />
            <wire x2="3440" y1="1120" y2="1120" x1="3392" />
            <wire x2="3392" y1="1120" y2="1376" x1="3392" />
            <wire x2="3440" y1="1376" y2="1376" x1="3392" />
            <wire x2="3392" y1="1376" y2="1648" x1="3392" />
            <wire x2="3440" y1="1648" y2="1648" x1="3392" />
            <wire x2="3392" y1="1648" y2="1904" x1="3392" />
            <wire x2="3440" y1="1904" y2="1904" x1="3392" />
            <wire x2="3392" y1="1904" y2="2176" x1="3392" />
            <wire x2="3392" y1="2176" y2="2384" x1="3392" />
            <wire x2="3408" y1="2384" y2="2384" x1="3392" />
            <wire x2="3392" y1="2384" y2="2464" x1="3392" />
            <wire x2="3408" y1="2464" y2="2464" x1="3392" />
            <wire x2="3392" y1="2464" y2="2544" x1="3392" />
            <wire x2="3408" y1="2544" y2="2544" x1="3392" />
            <wire x2="3392" y1="2544" y2="2624" x1="3392" />
            <wire x2="3408" y1="2624" y2="2624" x1="3392" />
            <wire x2="3392" y1="2624" y2="2704" x1="3392" />
            <wire x2="3408" y1="2704" y2="2704" x1="3392" />
            <wire x2="3392" y1="2704" y2="2784" x1="3392" />
            <wire x2="3408" y1="2784" y2="2784" x1="3392" />
            <wire x2="3392" y1="2784" y2="2864" x1="3392" />
            <wire x2="3408" y1="2864" y2="2864" x1="3392" />
            <wire x2="3392" y1="2864" y2="2944" x1="3392" />
            <wire x2="3408" y1="2944" y2="2944" x1="3392" />
            <wire x2="3440" y1="2176" y2="2176" x1="3392" />
        </branch>
        <branch name="DS4_dp">
            <wire x2="3664" y1="2864" y2="2864" x1="3632" />
        </branch>
        <branch name="DS5_dp">
            <wire x2="3664" y1="2944" y2="2944" x1="3632" />
        </branch>
        <branch name="clk">
            <wire x2="1184" y1="432" y2="432" x1="1024" />
            <wire x2="1184" y1="432" y2="976" x1="1184" />
            <wire x2="1360" y1="976" y2="976" x1="1184" />
            <wire x2="2160" y1="432" y2="432" x1="1184" />
        </branch>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="3480" y="764">DS6 is the lowest-valued digit on the display</text>
        <text style="fontsize:24;fontname:Arial;textcolor:rgb(0,0,0)" x="3424" y="2320">Connect common (phase_n) and all unused segments (5x decimal point, 2x colon) to the display clock</text>
        <instance x="1360" y="1136" name="XLXI_64" orien="R0">
        </instance>
        <branch name="XLXN_59">
            <wire x2="1888" y1="976" y2="976" x1="1744" />
            <wire x2="2416" y1="912" y2="912" x1="1888" />
            <wire x2="1888" y1="912" y2="976" x1="1888" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="2080" y1="1104" y2="1104" x1="1744" />
            <wire x2="2080" y1="1104" y2="1168" x1="2080" />
            <wire x2="2416" y1="1168" y2="1168" x1="2080" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2016" y1="1040" y2="1040" x1="1744" />
            <wire x2="2016" y1="928" y2="1040" x1="2016" />
            <wire x2="2384" y1="928" y2="928" x1="2016" />
            <wire x2="2384" y1="928" y2="1040" x1="2384" />
            <wire x2="2416" y1="1040" y2="1040" x1="2384" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2416" y1="976" y2="976" x1="2192" />
        </branch>
        <instance x="1136" y="1264" name="XLXI_65" orien="R0" />
        <branch name="XLXN_63">
            <wire x2="1360" y1="1104" y2="1104" x1="1200" />
            <wire x2="1200" y1="1104" y2="1136" x1="1200" />
        </branch>
        <branch name="IO_4">
            <wire x2="1344" y1="1040" y2="1040" x1="1040" />
            <wire x2="1360" y1="1040" y2="1040" x1="1344" />
        </branch>
        <branch name="XLXN_64(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1968" type="branch" />
            <wire x2="3056" y1="1968" y2="1984" x1="3056" />
            <wire x2="3056" y1="1984" y2="2016" x1="3056" />
            <wire x2="3056" y1="2016" y2="2048" x1="3056" />
            <wire x2="3056" y1="2048" y2="2112" x1="3056" />
            <wire x2="3056" y1="2112" y2="2176" x1="3056" />
            <wire x2="3248" y1="1968" y2="1968" x1="3056" />
            <wire x2="3440" y1="1968" y2="1968" x1="3248" />
        </branch>
        <branch name="XLXN_65(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3236" y="2240" type="branch" />
            <wire x2="3056" y1="2240" y2="2256" x1="3056" />
            <wire x2="3056" y1="2256" y2="2272" x1="3056" />
            <wire x2="3056" y1="2272" y2="2288" x1="3056" />
            <wire x2="3056" y1="2288" y2="2320" x1="3056" />
            <wire x2="3056" y1="2320" y2="2336" x1="3056" />
            <wire x2="3056" y1="2336" y2="2400" x1="3056" />
            <wire x2="3056" y1="2400" y2="2464" x1="3056" />
            <wire x2="3232" y1="2240" y2="2240" x1="3056" />
            <wire x2="3236" y1="2240" y2="2240" x1="3232" />
            <wire x2="3440" y1="2240" y2="2240" x1="3236" />
        </branch>
        <bustap x2="2960" y1="1984" y2="1984" x1="3056" />
        <branch name="XLXN_64(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="1984" type="branch" />
            <wire x2="2880" y1="1984" y2="1984" x1="2816" />
            <wire x2="2944" y1="1984" y2="1984" x1="2880" />
            <wire x2="2960" y1="1984" y2="1984" x1="2944" />
        </branch>
        <instance x="2592" y="2208" name="XLXI_66" orien="R0" />
        <instance x="2592" y="2496" name="XLXI_67" orien="R0" />
        <bustap x2="2960" y1="2048" y2="2048" x1="3056" />
        <bustap x2="2960" y1="2112" y2="2112" x1="3056" />
        <bustap x2="2960" y1="2176" y2="2176" x1="3056" />
        <bustap x2="2960" y1="2272" y2="2272" x1="3056" />
        <bustap x2="2960" y1="2336" y2="2336" x1="3056" />
        <bustap x2="2960" y1="2400" y2="2400" x1="3056" />
        <bustap x2="2960" y1="2464" y2="2464" x1="3056" />
        <branch name="XLXN_64(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="2048" type="branch" />
            <wire x2="2880" y1="2048" y2="2048" x1="2816" />
            <wire x2="2960" y1="2048" y2="2048" x1="2880" />
        </branch>
        <branch name="XLXN_64(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2884" y="2112" type="branch" />
            <wire x2="2880" y1="2112" y2="2112" x1="2816" />
            <wire x2="2884" y1="2112" y2="2112" x1="2880" />
            <wire x2="2960" y1="2112" y2="2112" x1="2884" />
        </branch>
        <branch name="XLXN_64(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2889" y="2176" type="branch" />
            <wire x2="2889" y1="2176" y2="2176" x1="2816" />
            <wire x2="2896" y1="2176" y2="2176" x1="2889" />
            <wire x2="2960" y1="2176" y2="2176" x1="2896" />
        </branch>
        <branch name="XLXN_65(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2890" y="2272" type="branch" />
            <wire x2="2890" y1="2272" y2="2272" x1="2816" />
            <wire x2="2896" y1="2272" y2="2272" x1="2890" />
            <wire x2="2960" y1="2272" y2="2272" x1="2896" />
        </branch>
        <branch name="XLXN_65(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2892" y="2336" type="branch" />
            <wire x2="2892" y1="2336" y2="2336" x1="2816" />
            <wire x2="2896" y1="2336" y2="2336" x1="2892" />
            <wire x2="2960" y1="2336" y2="2336" x1="2896" />
        </branch>
        <branch name="XLXN_65(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2892" y="2400" type="branch" />
            <wire x2="2892" y1="2400" y2="2400" x1="2816" />
            <wire x2="2896" y1="2400" y2="2400" x1="2892" />
            <wire x2="2960" y1="2400" y2="2400" x1="2896" />
        </branch>
        <branch name="XLXN_65(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2888" y="2464" type="branch" />
            <wire x2="2888" y1="2464" y2="2464" x1="2816" />
            <wire x2="2896" y1="2464" y2="2464" x1="2888" />
            <wire x2="2960" y1="2464" y2="2464" x1="2896" />
        </branch>
        <branch name="sw1">
            <wire x2="2592" y1="1984" y2="1984" x1="2560" />
        </branch>
        <branch name="sw2">
            <wire x2="2592" y1="2048" y2="2048" x1="2560" />
        </branch>
        <branch name="sw3">
            <wire x2="2592" y1="2112" y2="2112" x1="2560" />
        </branch>
        <branch name="sw4">
            <wire x2="2592" y1="2176" y2="2176" x1="2560" />
        </branch>
        <branch name="DIP1">
            <wire x2="2592" y1="2272" y2="2272" x1="2560" />
        </branch>
        <branch name="DIP2">
            <wire x2="2592" y1="2336" y2="2336" x1="2560" />
        </branch>
        <branch name="DIP3">
            <wire x2="2592" y1="2400" y2="2400" x1="2560" />
        </branch>
        <branch name="DIP4">
            <wire x2="2592" y1="2464" y2="2464" x1="2560" />
        </branch>
        <instance x="2160" y="464" name="XLXI_68" orien="R0">
        </instance>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2136" y="504">Divide 32768/400 = 81Hz</text>
        <iomarker fontsize="28" x="3856" y="896" name="DS6(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3856" y="1120" name="DS5(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3856" y="1376" name="DS4(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3856" y="1648" name="DS3(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3856" y="1904" name="DS2(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3856" y="2176" name="DS1(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3664" y="2544" name="cln2" orien="R0" />
        <iomarker fontsize="28" x="3664" y="2624" name="DS1_dp" orien="R0" />
        <iomarker fontsize="28" x="3664" y="2704" name="DS2_dp" orien="R0" />
        <iomarker fontsize="28" x="3664" y="2384" name="phase_n" orien="R0" />
        <iomarker fontsize="28" x="3664" y="2464" name="cln1" orien="R0" />
        <iomarker fontsize="28" x="3664" y="2864" name="DS4_dp" orien="R0" />
        <iomarker fontsize="28" x="3664" y="2944" name="DS5_dp" orien="R0" />
        <iomarker fontsize="28" x="3664" y="2784" name="DS3_dp" orien="R0" />
        <iomarker fontsize="28" x="1024" y="432" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2560" y="1984" name="sw1" orien="R180" />
        <iomarker fontsize="28" x="2560" y="2048" name="sw2" orien="R180" />
        <iomarker fontsize="28" x="2560" y="2112" name="sw3" orien="R180" />
        <iomarker fontsize="28" x="2560" y="2176" name="sw4" orien="R180" />
        <iomarker fontsize="28" x="2560" y="2272" name="DIP1" orien="R180" />
        <iomarker fontsize="28" x="2560" y="2336" name="DIP2" orien="R180" />
        <iomarker fontsize="28" x="2560" y="2400" name="DIP3" orien="R180" />
        <iomarker fontsize="28" x="2560" y="2464" name="DIP4" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1040" name="IO_4" orien="R180" />
    </sheet>
</drawing>