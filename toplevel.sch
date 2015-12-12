<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
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
        <block symbolname="serparbuf" name="XLXI_18">
            <blockpin name="DATA_IN" />
            <blockpin name="CLEAR" />
            <blockpin name="SHIFT_OUT" />
            <blockpin name="ENABLE" />
            <blockpin name="SHIFT_DOWN" />
            <blockpin name="DATA_OUT(19:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1696" y="1008" name="XLXI_18" orien="R0">
        </instance>
    </sheet>
</drawing>