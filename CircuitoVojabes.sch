<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_6" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="C" />
        <signal name="D" />
        <signal name="P" />
        <signal name="CA" />
        <signal name="ESTADOS(2:0)" />
        <signal name="XLXN_19" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="P" />
        <port polarity="Output" name="CA" />
        <port polarity="Output" name="ESTADOS(2:0)" />
        <blockdef name="debounce">
            <timestamp>2020-11-19T19:57:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2020-11-19T19:59:48</timestamp>
            <rect width="304" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="MOORE">
            <timestamp>2020-11-19T20:1:52</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="debounce" name="XLXI_1">
            <blockpin signalname="C" name="D_IN" />
            <blockpin signalname="CLK" name="clock" />
            <blockpin signalname="XLXN_6" name="reset" />
            <blockpin signalname="XLXN_16" name="Q_OUT" />
        </block>
        <block symbolname="debounce" name="XLXI_2">
            <blockpin signalname="D" name="D_IN" />
            <blockpin signalname="CLK" name="clock" />
            <blockpin signalname="XLXN_6" name="reset" />
            <blockpin signalname="XLXN_15" name="Q_OUT" />
        </block>
        <block symbolname="clk_div" name="XLXI_3">
            <blockpin signalname="CLK" name="clock_50Mhz" />
            <blockpin name="clock_1MHz" />
            <blockpin name="clock_100KHz" />
            <blockpin name="clock_10KHz" />
            <blockpin name="clock_1KHz" />
            <blockpin signalname="XLXN_19" name="clock_100Hz" />
            <blockpin name="clock_10Hz" />
            <blockpin name="clock_1Hz" />
        </block>
        <block symbolname="ftc" name="XLXI_4">
            <blockpin signalname="XLXN_19" name="C" />
            <blockpin signalname="XLXN_8" name="CLR" />
            <blockpin signalname="XLXN_9" name="T" />
            <blockpin signalname="XLXN_12" name="Q" />
        </block>
        <block symbolname="ftc" name="XLXI_5">
            <blockpin signalname="XLXN_12" name="C" />
            <blockpin signalname="XLXN_11" name="CLR" />
            <blockpin signalname="XLXN_10" name="T" />
            <blockpin signalname="XLXN_14" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_8" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="XLXN_11" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_9" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="XLXN_10" name="P" />
        </block>
        <block symbolname="MOORE" name="XLXI_11">
            <blockpin signalname="XLXN_16" name="C" />
            <blockpin signalname="XLXN_15" name="D" />
            <blockpin signalname="XLXN_14" name="CLK" />
            <blockpin signalname="XLXN_13" name="RST" />
            <blockpin signalname="P" name="P" />
            <blockpin signalname="CA" name="Ca" />
            <blockpin signalname="ESTADOS(2:0)" name="ESTADOS(2:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="XLXN_13" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1168" y="368" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1168" y="688" name="XLXI_2" orien="R0">
        </instance>
        <instance x="576" y="1568" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1344" y="1392" name="XLXI_4" orien="R0" />
        <instance x="1936" y="1376" name="XLXI_5" orien="R0" />
        <branch name="CLK">
            <wire x2="400" y1="592" y2="592" x1="160" />
            <wire x2="1152" y1="592" y2="592" x1="400" />
            <wire x2="1168" y1="592" y2="592" x1="1152" />
            <wire x2="400" y1="592" y2="1152" x1="400" />
            <wire x2="576" y1="1152" y2="1152" x1="400" />
            <wire x2="1168" y1="272" y2="272" x1="400" />
            <wire x2="400" y1="272" y2="592" x1="400" />
        </branch>
        <iomarker fontsize="28" x="160" y="592" name="CLK" orien="R180" />
        <instance x="912" y="800" name="XLXI_6" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1168" y1="336" y2="336" x1="976" />
            <wire x2="976" y1="336" y2="656" x1="976" />
            <wire x2="1168" y1="656" y2="656" x1="976" />
            <wire x2="976" y1="656" y2="672" x1="976" />
        </branch>
        <instance x="1232" y="1552" name="XLXI_7" orien="R0" />
        <instance x="1872" y="1584" name="XLXI_8" orien="R0" />
        <instance x="1184" y="1008" name="XLXI_9" orien="R0" />
        <instance x="1856" y="1024" name="XLXI_10" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1344" y1="1376" y2="1376" x1="1296" />
            <wire x2="1296" y1="1376" y2="1424" x1="1296" />
            <wire x2="1344" y1="1360" y2="1376" x1="1344" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1248" y1="1008" y2="1024" x1="1248" />
            <wire x2="1248" y1="1024" y2="1136" x1="1248" />
            <wire x2="1344" y1="1136" y2="1136" x1="1248" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1920" y1="1024" y2="1120" x1="1920" />
            <wire x2="1936" y1="1120" y2="1120" x1="1920" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1936" y1="1344" y2="1456" x1="1936" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1824" y1="1136" y2="1136" x1="1728" />
            <wire x2="1824" y1="1136" y2="1248" x1="1824" />
            <wire x2="1920" y1="1248" y2="1248" x1="1824" />
            <wire x2="1936" y1="1248" y2="1248" x1="1920" />
        </branch>
        <instance x="2512" y="896" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_13">
            <wire x2="2512" y1="864" y2="896" x1="2512" />
        </branch>
        <instance x="2448" y="1024" name="XLXI_12" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="2416" y1="1120" y2="1120" x1="2320" />
            <wire x2="2416" y1="800" y2="1120" x1="2416" />
            <wire x2="2512" y1="800" y2="800" x1="2416" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2032" y1="528" y2="528" x1="1552" />
            <wire x2="2032" y1="528" y2="736" x1="2032" />
            <wire x2="2512" y1="736" y2="736" x1="2032" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2048" y1="208" y2="208" x1="1552" />
            <wire x2="2048" y1="208" y2="672" x1="2048" />
            <wire x2="2512" y1="672" y2="672" x1="2048" />
        </branch>
        <branch name="C">
            <wire x2="1152" y1="208" y2="208" x1="928" />
            <wire x2="1168" y1="208" y2="208" x1="1152" />
        </branch>
        <branch name="D">
            <wire x2="1152" y1="528" y2="528" x1="912" />
            <wire x2="1168" y1="528" y2="528" x1="1152" />
        </branch>
        <branch name="P">
            <wire x2="2928" y1="672" y2="672" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="2928" y="672" name="P" orien="R0" />
        <branch name="CA">
            <wire x2="2928" y1="768" y2="768" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="2928" y="768" name="CA" orien="R0" />
        <iomarker fontsize="28" x="912" y="528" name="D" orien="R180" />
        <iomarker fontsize="28" x="928" y="208" name="C" orien="R180" />
        <branch name="ESTADOS(2:0)">
            <wire x2="2928" y1="864" y2="864" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="2928" y="864" name="ESTADOS(2:0)" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1168" y1="1408" y2="1408" x1="1008" />
            <wire x2="1168" y1="1264" y2="1408" x1="1168" />
            <wire x2="1344" y1="1264" y2="1264" x1="1168" />
        </branch>
    </sheet>
</drawing>