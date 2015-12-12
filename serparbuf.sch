<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DATA_IN" />
        <signal name="CLEAR" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5(15:0)" />
        <signal name="XLXN_5(15)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="SHIFT_OUT" />
        <signal name="ENABLE" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="SHIFT_DOWN" />
        <signal name="DATA_OUT(15:0)" />
        <signal name="DATA_OUT(19)" />
        <signal name="DATA_OUT(18)" />
        <signal name="DATA_OUT(17)" />
        <signal name="DATA_OUT(16)" />
        <signal name="DATA_OUT(19:0)" />
        <port polarity="Input" name="DATA_IN" />
        <port polarity="Input" name="CLEAR" />
        <port polarity="Input" name="SHIFT_OUT" />
        <port polarity="Input" name="ENABLE" />
        <port polarity="Input" name="SHIFT_DOWN" />
        <port polarity="Output" name="DATA_OUT(19:0)" />
        <blockdef name="sr16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
        </blockdef>
        <blockdef name="sr4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
        </blockdef>
        <blockdef name="fd16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="fd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <block symbolname="sr16ce" name="XLXI_16">
            <blockpin signalname="SHIFT_DOWN" name="C" />
            <blockpin signalname="ENABLE" name="CE" />
            <blockpin signalname="CLEAR" name="CLR" />
            <blockpin signalname="DATA_IN" name="SLI" />
            <blockpin signalname="XLXN_5(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="sr4ce" name="XLXI_17">
            <blockpin signalname="SHIFT_DOWN" name="C" />
            <blockpin signalname="ENABLE" name="CE" />
            <blockpin signalname="CLEAR" name="CLR" />
            <blockpin signalname="XLXN_5(15)" name="SLI" />
            <blockpin signalname="XLXN_8" name="Q0" />
            <blockpin signalname="XLXN_9" name="Q1" />
            <blockpin signalname="XLXN_10" name="Q2" />
            <blockpin signalname="XLXN_11" name="Q3" />
        </block>
        <block symbolname="fd16ce" name="XLXI_19">
            <blockpin signalname="SHIFT_OUT" name="C" />
            <blockpin signalname="ENABLE" name="CE" />
            <blockpin signalname="CLEAR" name="CLR" />
            <blockpin signalname="XLXN_5(15:0)" name="D(15:0)" />
            <blockpin signalname="DATA_OUT(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd4ce" name="XLXI_20">
            <blockpin signalname="SHIFT_OUT" name="C" />
            <blockpin signalname="ENABLE" name="CE" />
            <blockpin signalname="CLEAR" name="CLR" />
            <blockpin signalname="XLXN_8" name="D0" />
            <blockpin signalname="XLXN_9" name="D1" />
            <blockpin signalname="XLXN_10" name="D2" />
            <blockpin signalname="XLXN_11" name="D3" />
            <blockpin signalname="DATA_OUT(16)" name="Q0" />
            <blockpin signalname="DATA_OUT(17)" name="Q1" />
            <blockpin signalname="DATA_OUT(18)" name="Q2" />
            <blockpin signalname="DATA_OUT(19)" name="Q3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1376" y="1856" name="XLXI_17" orien="R0" />
        <branch name="CLEAR">
            <wire x2="1232" y1="1312" y2="1312" x1="1152" />
            <wire x2="1232" y1="1312" y2="1824" x1="1232" />
            <wire x2="1232" y1="1824" y2="1952" x1="1232" />
            <wire x2="2016" y1="1952" y2="1952" x1="1232" />
            <wire x2="1376" y1="1824" y2="1824" x1="1232" />
            <wire x2="1376" y1="1312" y2="1312" x1="1232" />
            <wire x2="2016" y1="1312" y2="1312" x1="1376" />
        </branch>
        <branch name="XLXN_5(15)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1216" type="branch" />
            <wire x2="1840" y1="1392" y2="1392" x1="1376" />
            <wire x2="1376" y1="1392" y2="1536" x1="1376" />
            <wire x2="1840" y1="1184" y2="1216" x1="1840" />
            <wire x2="1840" y1="1216" y2="1392" x1="1840" />
        </branch>
        <bustap x2="1840" y1="1088" y2="1184" x1="1840" />
        <instance x="2016" y="1344" name="XLXI_19" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="2016" y1="1536" y2="1536" x1="1760" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2016" y1="1600" y2="1600" x1="1760" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2016" y1="1664" y2="1664" x1="1760" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2016" y1="1728" y2="1728" x1="1760" />
        </branch>
        <branch name="XLXN_5(15:0)">
            <wire x2="1840" y1="1088" y2="1088" x1="1760" />
            <wire x2="2016" y1="1088" y2="1088" x1="1840" />
        </branch>
        <branch name="DATA_IN">
            <wire x2="1376" y1="1024" y2="1024" x1="1184" />
        </branch>
        <instance x="1376" y="1344" name="XLXI_16" orien="R0" />
        <instance x="2016" y="1984" name="XLXI_20" orien="R0" />
        <branch name="SHIFT_OUT">
            <wire x2="1968" y1="1856" y2="1856" x1="1200" />
            <wire x2="2016" y1="1856" y2="1856" x1="1968" />
            <wire x2="2016" y1="1216" y2="1216" x1="1968" />
            <wire x2="1968" y1="1216" y2="1856" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1152" y="1312" name="CLEAR" orien="R180" />
        <iomarker fontsize="28" x="1184" y="1024" name="DATA_IN" orien="R180" />
        <iomarker fontsize="28" x="1168" y="1360" name="ENABLE" orien="R180" />
        <iomarker fontsize="28" x="1200" y="1856" name="SHIFT_OUT" orien="R180" />
        <branch name="ENABLE">
            <wire x2="1328" y1="1360" y2="1360" x1="1168" />
            <wire x2="1328" y1="1360" y2="1664" x1="1328" />
            <wire x2="1376" y1="1664" y2="1664" x1="1328" />
            <wire x2="1936" y1="1360" y2="1360" x1="1328" />
            <wire x2="1936" y1="1360" y2="1792" x1="1936" />
            <wire x2="2016" y1="1792" y2="1792" x1="1936" />
            <wire x2="1328" y1="1152" y2="1360" x1="1328" />
            <wire x2="1376" y1="1152" y2="1152" x1="1328" />
            <wire x2="2016" y1="1152" y2="1152" x1="1936" />
            <wire x2="1936" y1="1152" y2="1360" x1="1936" />
        </branch>
        <branch name="SHIFT_DOWN">
            <wire x2="1280" y1="1216" y2="1216" x1="1168" />
            <wire x2="1280" y1="1216" y2="1728" x1="1280" />
            <wire x2="1376" y1="1728" y2="1728" x1="1280" />
            <wire x2="1376" y1="1216" y2="1216" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1216" name="SHIFT_DOWN" orien="R180" />
        <iomarker fontsize="28" x="2768" y="1072" name="DATA_OUT(19:0)" orien="R0" />
        <branch name="DATA_OUT(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1088" type="branch" />
            <wire x2="2480" y1="1088" y2="1088" x1="2400" />
            <wire x2="2496" y1="1088" y2="1088" x1="2480" />
            <wire x2="2528" y1="1088" y2="1088" x1="2496" />
        </branch>
        <branch name="DATA_OUT(19)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1728" type="branch" />
            <wire x2="2464" y1="1728" y2="1728" x1="2400" />
            <wire x2="2496" y1="1728" y2="1728" x1="2464" />
            <wire x2="2528" y1="1728" y2="1728" x1="2496" />
        </branch>
        <branch name="DATA_OUT(18)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1664" type="branch" />
            <wire x2="2464" y1="1664" y2="1664" x1="2400" />
            <wire x2="2496" y1="1664" y2="1664" x1="2464" />
            <wire x2="2528" y1="1664" y2="1664" x1="2496" />
        </branch>
        <branch name="DATA_OUT(17)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1600" type="branch" />
            <wire x2="2464" y1="1600" y2="1600" x1="2400" />
            <wire x2="2528" y1="1600" y2="1600" x1="2464" />
        </branch>
        <branch name="DATA_OUT(16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1536" type="branch" />
            <wire x2="2464" y1="1536" y2="1536" x1="2400" />
            <wire x2="2496" y1="1536" y2="1536" x1="2464" />
            <wire x2="2528" y1="1536" y2="1536" x1="2496" />
        </branch>
        <branch name="DATA_OUT(19:0)">
            <wire x2="2768" y1="1072" y2="1072" x1="2624" />
            <wire x2="2624" y1="1072" y2="1088" x1="2624" />
            <wire x2="2624" y1="1088" y2="1536" x1="2624" />
            <wire x2="2624" y1="1536" y2="1600" x1="2624" />
            <wire x2="2624" y1="1600" y2="1664" x1="2624" />
            <wire x2="2624" y1="1664" y2="1728" x1="2624" />
        </branch>
        <bustap x2="2528" y1="1728" y2="1728" x1="2624" />
        <bustap x2="2528" y1="1664" y2="1664" x1="2624" />
        <bustap x2="2528" y1="1600" y2="1600" x1="2624" />
        <bustap x2="2528" y1="1536" y2="1536" x1="2624" />
        <bustap x2="2528" y1="1088" y2="1088" x1="2624" />
    </sheet>
</drawing>