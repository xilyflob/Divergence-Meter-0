<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="My Imported Components">
<packages>
<package name="MA08-1" urn="urn:adsk.eagle:footprint:8294/1" locally_modified="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<pad name="1" x="-8.89" y="0" drill="0.75" diameter="1.4224" shape="square" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="0.75" diameter="1.4224" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="0.75" diameter="1.4224" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="0.75" diameter="1.4224" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="0.75" diameter="1.4224" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="0.75" diameter="1.4224" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="0.75" diameter="1.4224" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="0.75" diameter="1.4224" rot="R90"/>
<text x="11.43" y="0" size="1.27" layer="25" ratio="10" align="center-left">&gt;NAME</text>
<text x="-11.43" y="0" size="1.27" layer="21" ratio="10" align="center-right">&gt;VALUE</text>
<wire x1="-10.16" y1="1.27" x2="-10.16" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.27" x2="-7.62" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.27" x2="10.16" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.27" x2="10.16" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.27" x2="-7.62" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.27" x2="-10.16" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="-1.27" width="0.1524" layer="21"/>
</package>
<package name="MA02-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<pad name="1" x="-1.27" y="0" drill="1" diameter="1.4224" shape="square" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.4224" rot="R90"/>
<text x="3.175" y="0" size="1.27" layer="25" ratio="10" align="center-left">&gt;NAME</text>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="1.27" x2="0" y2="1.27" width="0.127" layer="21"/>
<wire x1="0" y1="1.27" x2="-2.54" y2="1.27" width="0.127" layer="21"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="0.127" layer="21"/>
</package>
<package name="C025-040X050" urn="urn:adsk.eagle:footprint:23139/1" locally_modified="yes">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 4 x 5.5 mm</description>
<pad name="1" x="-1.25" y="0" drill="0.8128"/>
<pad name="2" x="1.25" y="0" drill="0.8128"/>
<text x="2.794" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="2.794" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-2.032" y1="-1.27" x2="2.032" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-1.27" x2="2.54" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.032" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.27" x2="-2.032" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.27" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.762" x2="-2.54" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.032" y2="-1.27" width="0.1524" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="MA08-1" urn="urn:adsk.eagle:package:8343/1" type="box">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA08-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA08-1">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<text x="-1.27" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA02-1">
<wire x1="3.81" y1="-2.54" x2="-1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="C-US">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1" x2="2.4892" y2="-1.8542" width="0.254" layer="94" curve="-37.878202"/>
<wire x1="-2.4668" y1="-1.8504" x2="0" y2="-1.0161" width="0.254" layer="94" curve="-37.373024"/>
<text x="1.016" y="0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.016" y="-4.191" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA08-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA08-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA08-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8343/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="10" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA02-1" prefix="SV">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA02-1" x="0" y="5.08"/>
</gates>
<devices>
<device name="" package="MA02-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FK18X7R1H104K">
<gates>
<gate name="G$1" symbol="C-US" x="0" y="0"/>
</gates>
<devices>
<device name="" package="C025-040X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="My Imported Components" urn="urn:adsk.eagle:library:29231634">
<packages>
<package name="0207/10" urn="urn:adsk.eagle:footprint:29231682/1" library_version="30">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-4.445" y="0" drill="0.8128"/>
<pad name="2" x="4.445" y="0" drill="0.8128"/>
<text x="0" y="0" size="1.27" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="0" y="1.143" size="0.635" layer="27" ratio="10" align="bottom-center">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="R0805" urn="urn:adsk.eagle:footprint:29231711/1" library_version="30">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-2.0828" y1="1.0922" x2="2.0828" y2="1.0922" width="0.127" layer="21"/>
<wire x1="-2.0828" y1="-1.0922" x2="2.0828" y2="-1.0922" width="0.127" layer="21"/>
<wire x1="-2.0828" y1="1.0922" x2="-2.0828" y2="-1.0922" width="0.127" layer="21"/>
<wire x1="2.0828" y1="-1.0922" x2="2.0828" y2="1.0922" width="0.127" layer="21"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="0" y="1.905" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="IN-14" urn="urn:adsk.eagle:footprint:29231678/1" library_version="30">
<pad name="A" x="0" y="5.75" drill="1.3" diameter="1.554"/>
<pad name="LDP" x="2.67213125" y="5.0913875" drill="1.3" diameter="1.9"/>
<pad name="K1" x="4.732121875" y="3.266421875" drill="1.3" diameter="1.9"/>
<pad name="K2" x="5.708065625" y="0.693178125" drill="1.3" diameter="1.9"/>
<pad name="K3" x="5.3763875" y="-2.038859375" drill="1.3" diameter="1.9"/>
<pad name="K4" x="3.813071875" y="-4.30383125" drill="1.3" diameter="1.9"/>
<pad name="K5" x="1.37624375" y="-5.58286875" drill="1.3" diameter="1.9"/>
<pad name="K6" x="-1.375859375" y="-5.58296875" drill="1.3" diameter="1.9"/>
<pad name="K7" x="-3.81276875" y="-4.3041" drill="1.3" diameter="1.9"/>
<pad name="K8" x="-5.376240625" y="-2.039240625" drill="1.3" diameter="1.9"/>
<pad name="K9" x="-5.708109375" y="0.692778125" drill="1.3" diameter="1.9"/>
<pad name="K0" x="-4.73235" y="3.26609375" drill="1.3" diameter="1.9"/>
<pad name="RDP" x="-2.672490625" y="5.0912" drill="1.3" diameter="1.9"/>
<circle x="0" y="0" radius="9" width="0.1524" layer="21"/>
<text x="0" y="2" size="1.27" layer="21" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="9.398" size="1.27" layer="21" ratio="10" align="bottom-center">A</text>
<wire x1="0" y1="1" x2="0" y2="-3.302" width="0.254" layer="21"/>
<wire x1="0" y1="-3.302" x2="1.016" y2="-1.778" width="0.254" layer="21"/>
<wire x1="0" y1="-3.302" x2="-1.016" y2="-1.778" width="0.254" layer="21"/>
</package>
<package name="IN-14_REVERSE" urn="urn:adsk.eagle:footprint:29231697/8" library_version="30">
<description>Intended to be placed on the REVERSE side of a board</description>
<pad name="A" x="0" y="5.75" drill="1.3" diameter="2"/>
<pad name="RDP" x="2.67213125" y="5.0913875" drill="1.3" diameter="2"/>
<pad name="K0" x="4.732121875" y="3.266421875" drill="1.3" diameter="2"/>
<pad name="K9" x="5.708065625" y="0.693178125" drill="1.3" diameter="2"/>
<pad name="K8" x="5.3763875" y="-2.038859375" drill="1.3" diameter="2"/>
<pad name="K7" x="3.813071875" y="-4.30383125" drill="1.3" diameter="2"/>
<pad name="K6" x="1.37624375" y="-5.58286875" drill="1.3" diameter="2"/>
<pad name="K5" x="-1.375859375" y="-5.58296875" drill="1.3" diameter="2"/>
<pad name="K4" x="-3.81276875" y="-4.3041" drill="1.3" diameter="2"/>
<pad name="K3" x="-5.376240625" y="-2.039240625" drill="1.3" diameter="2"/>
<pad name="K2" x="-5.708109375" y="0.692778125" drill="1.3" diameter="2"/>
<pad name="K1" x="-4.73235" y="3.26609375" drill="1.3" diameter="2"/>
<pad name="LDP" x="-2.672490625" y="5.0912" drill="1.3" diameter="2"/>
<circle x="0" y="0" radius="9" width="0.1524" layer="21"/>
<text x="0" y="2" size="1.27" layer="21" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="9.398" size="1.27" layer="21" ratio="10" align="bottom-center">A</text>
<text x="0" y="0" size="1.27" layer="22" ratio="10" rot="MR0" align="center">&gt;NAME</text>
<text x="0" y="-9.398" size="1.27" layer="21" ratio="10" align="top-center">Display</text>
<wire x1="0" y1="1" x2="0" y2="-3.302" width="0.254" layer="21"/>
<wire x1="0" y1="1" x2="1.016" y2="-0.524" width="0.254" layer="21"/>
<wire x1="0" y1="1" x2="-1.016" y2="-0.524" width="0.254" layer="21"/>
</package>
<package name="QFP-44" urn="urn:adsk.eagle:footprint:29231677/4" library_version="30">
<smd name="1" x="-6.5" y="4" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="2" x="-6.5" y="3.2" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="3" x="-6.5" y="2.4" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="4" x="-6.5" y="1.6" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="5" x="-6.5" y="0.8" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="6" x="-6.5" y="0" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="7" x="-6.5" y="-0.8" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="8" x="-6.5" y="-1.6" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="9" x="-6.5" y="-2.4" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="10" x="-6.5" y="-3.2" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="11" x="-6.5" y="-4" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="12" x="-4" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="13" x="-3.2" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="14" x="-2.4" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="15" x="-1.6" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="16" x="-0.8" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="17" x="0" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="18" x="0.8" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="19" x="1.6" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="20" x="2.4" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="21" x="3.2" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="22" x="4" y="-6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="23" x="6.5" y="-4" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="24" x="6.5" y="-3.2" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="25" x="6.5" y="-2.4" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="26" x="6.5" y="-1.6" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="27" x="6.5" y="-0.8" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="28" x="6.5" y="0" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="29" x="6.5" y="0.8" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="30" x="6.5" y="1.6" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="31" x="6.5" y="2.4" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="32" x="6.5" y="3.2" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="33" x="6.5" y="4" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R270"/>
<smd name="34" x="4" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="35" x="3.2" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="36" x="2.4" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="37" x="1.6" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="38" x="0.8" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="39" x="0" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="40" x="-0.8" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="41" x="-1.6" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="42" x="-2.4" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="43" x="-3.2" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<smd name="44" x="-4" y="6.5" dx="0.55" dy="1.9" layer="1" roundness="100" rot="R180"/>
<text x="6.5" y="-6.5" size="1.27" layer="25" ratio="10" rot="SR0" align="center">&gt;NAME</text>
<wire x1="5" y1="5" x2="-5" y2="5" width="0.1524" layer="21"/>
<wire x1="-5" y1="5" x2="-5" y2="-5" width="0.1524" layer="21"/>
<wire x1="-5" y1="-5" x2="5" y2="-5" width="0.1524" layer="21"/>
<wire x1="5" y1="-5" x2="5" y2="5" width="0.1524" layer="21"/>
<circle x="-6" y="6" radius="0.3" width="0.6" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="0207/10" urn="urn:adsk.eagle:package:29231757/1" type="model" library_version="30">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<packageinstances>
<packageinstance name="0207/10"/>
</packageinstances>
</package3d>
<package3d name="R0805" urn="urn:adsk.eagle:package:29231759/1" type="box" library_version="30">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<packageinstances>
<packageinstance name="R0805"/>
</packageinstances>
</package3d>
<package3d name="IN-14" urn="urn:adsk.eagle:package:29231731/1" type="box" library_version="30">
<packageinstances>
<packageinstance name="IN-14"/>
</packageinstances>
</package3d>
<package3d name="IN-14_REVERSE" urn="urn:adsk.eagle:package:29231715/9" type="model" library_version="30">
<description>Intended to be placed on the REVERSE side of a board</description>
<packageinstances>
<packageinstance name="IN-14_REVERSE"/>
</packageinstances>
</package3d>
<package3d name="QFP-44" urn="urn:adsk.eagle:package:29231732/5" type="model" library_version="30">
<packageinstances>
<packageinstance name="QFP-44"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R-US" urn="urn:adsk.eagle:symbol:29231653/1" library_version="30">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="IN-14" urn="urn:adsk.eagle:symbol:29231657/1" library_version="30">
<circle x="0" y="0" radius="10.16" width="0.254" layer="94"/>
<pin name="A" x="0" y="12.7" visible="pad" length="short" direction="out" rot="R270"/>
<pin name="LDP" x="4.72153125" y="11.536246875" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="K1" x="8.361425" y="8.311640625" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="K2" x="12.625909375" y="1.2247875" visible="pad" length="short" direction="in" rot="R180"/>
<pin name="K3" x="9.499853125" y="-6.14248125" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="K4" x="6.73861875" y="-10.144759375" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="K5" x="2.431796875" y="-12.404596875" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="K9" x="-12.6260875" y="1.22428125" visible="pad" length="short" direction="in"/>
<pin name="K7" x="-6.737096875" y="-10.14526875" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="K8" x="-9.4996" y="-6.14324375" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="K6" x="-2.431034375" y="-12.404853125" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="K0" x="-8.361934375" y="8.311134375" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="RDP" x="-4.7221125" y="11.53591875" visible="pad" length="short" direction="in" rot="R270"/>
<text x="0" y="4.445" size="1.27" layer="94" align="bottom-center">&gt;NAME</text>
<text x="0" y="1.905" size="1.27" layer="94" align="bottom-center">&gt;VALUE</text>
<text x="0" y="-2.286" size="1.27" layer="94" align="bottom-center">Bottom View</text>
</symbol>
<symbol name="HV5622PG-G" urn="urn:adsk.eagle:symbol:29231658/1" library_version="30">
<pin name="HVOUT11" x="-17.78" y="12.7" length="short" direction="out"/>
<pin name="HVOUT12" x="-12.7" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT13" x="-10.16" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT14" x="-7.62" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT15" x="-5.08" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT16" x="-2.54" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT17" x="0" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT18" x="2.54" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT19" x="5.08" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT20" x="7.62" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT21" x="10.16" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT22" x="12.7" y="30.48" length="short" direction="out" rot="R270"/>
<pin name="HVOUT23" x="17.78" y="12.7" length="short" direction="out" rot="R180"/>
<pin name="HVOUT24" x="17.78" y="10.16" length="short" direction="out" rot="R180"/>
<pin name="HVOUT25" x="17.78" y="7.62" length="short" direction="out" rot="R180"/>
<pin name="HVOUT26" x="17.78" y="5.08" length="short" direction="out" rot="R180"/>
<pin name="HVOUT27" x="17.78" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="HVOUT28" x="17.78" y="0" length="short" direction="out" rot="R180"/>
<pin name="HVOUT29" x="17.78" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="HVOUT30" x="17.78" y="-5.08" length="short" direction="out" rot="R180"/>
<pin name="HVOUT31" x="17.78" y="-7.62" length="short" direction="out" rot="R180"/>
<pin name="HVOUT32" x="17.78" y="-10.16" length="short" direction="out" rot="R180"/>
<pin name="DATAOUT" x="-12.7" y="-27.94" length="short" direction="out" rot="R90"/>
<pin name="NC_2" x="-10.16" y="-27.94" length="short" direction="nc" rot="R90"/>
<pin name="NC_3" x="-7.62" y="-27.94" length="short" direction="nc" rot="R90"/>
<pin name="NC_4" x="-5.08" y="-27.94" length="short" direction="nc" rot="R90"/>
<pin name="!POL" x="-2.54" y="-27.94" length="short" direction="pas" rot="R90"/>
<pin name="CLK" x="0" y="-27.94" length="short" direction="in" rot="R90"/>
<pin name="VSS" x="2.54" y="-27.94" length="short" direction="pwr" rot="R90"/>
<pin name="VDD" x="5.08" y="-27.94" length="short" direction="pwr" rot="R90"/>
<pin name="!LE" x="7.62" y="-27.94" length="short" direction="in" rot="R90"/>
<pin name="DATAIN" x="10.16" y="-27.94" length="short" direction="in" rot="R90"/>
<pin name="!BL" x="12.7" y="-27.94" length="short" direction="pas" rot="R90"/>
<pin name="NC" x="17.78" y="-12.7" length="short" direction="nc" rot="R180"/>
<pin name="HVOUT1" x="-17.78" y="-12.7" length="short" direction="out"/>
<pin name="HVOUT2" x="-17.78" y="-10.16" length="short" direction="out"/>
<pin name="HVOUT3" x="-17.78" y="-7.62" length="short" direction="out"/>
<pin name="HVOUT4" x="-17.78" y="-5.08" length="short" direction="out"/>
<pin name="HVOUT5" x="-17.78" y="-2.54" length="short" direction="out"/>
<pin name="HVOUT6" x="-17.78" y="0" length="short" direction="out"/>
<pin name="HVOUT7" x="-17.78" y="2.54" length="short" direction="out"/>
<pin name="HVOUT8" x="-17.78" y="5.08" length="short" direction="out"/>
<pin name="HVOUT9" x="-17.78" y="7.62" length="short" direction="out"/>
<pin name="HVOUT10" x="-17.78" y="10.16" length="short" direction="out"/>
<text x="-2.54" y="-15.24" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="-2.54" y="-17.78" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
<wire x1="-15.24" y1="27.94" x2="15.24" y2="27.94" width="0.254" layer="94"/>
<wire x1="15.24" y1="27.94" x2="15.24" y2="-25.4" width="0.254" layer="94"/>
<wire x1="15.24" y1="-25.4" x2="-15.24" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-25.4" x2="-15.24" y2="27.94" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-US" urn="urn:adsk.eagle:component:29231783/1" prefix="R" uservalue="yes" library_version="30">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29231757/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="36" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29231759/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
<deviceset name="IN-14" urn="urn:adsk.eagle:component:29231787/9" library_version="30">
<gates>
<gate name="G$1" symbol="IN-14" x="0" y="0"/>
</gates>
<devices>
<device name="" package="IN-14">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K0" pad="K0"/>
<connect gate="G$1" pin="K1" pad="K1"/>
<connect gate="G$1" pin="K2" pad="K2"/>
<connect gate="G$1" pin="K3" pad="K3"/>
<connect gate="G$1" pin="K4" pad="K4"/>
<connect gate="G$1" pin="K5" pad="K5"/>
<connect gate="G$1" pin="K6" pad="K6"/>
<connect gate="G$1" pin="K7" pad="K7"/>
<connect gate="G$1" pin="K8" pad="K8"/>
<connect gate="G$1" pin="K9" pad="K9"/>
<connect gate="G$1" pin="LDP" pad="LDP"/>
<connect gate="G$1" pin="RDP" pad="RDP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29231731/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="IN-14_REVERSE" package="IN-14_REVERSE">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K0" pad="K0"/>
<connect gate="G$1" pin="K1" pad="K1"/>
<connect gate="G$1" pin="K2" pad="K2"/>
<connect gate="G$1" pin="K3" pad="K3"/>
<connect gate="G$1" pin="K4" pad="K4"/>
<connect gate="G$1" pin="K5" pad="K5"/>
<connect gate="G$1" pin="K6" pad="K6"/>
<connect gate="G$1" pin="K7" pad="K7"/>
<connect gate="G$1" pin="K8" pad="K8"/>
<connect gate="G$1" pin="K9" pad="K9"/>
<connect gate="G$1" pin="LDP" pad="LDP"/>
<connect gate="G$1" pin="RDP" pad="RDP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29231715/9"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HV5622PG-G" urn="urn:adsk.eagle:component:29231788/5" prefix="U" library_version="30">
<gates>
<gate name="A" symbol="HV5622PG-G" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP-44">
<connects>
<connect gate="A" pin="!BL" pad="33"/>
<connect gate="A" pin="!LE" pad="31"/>
<connect gate="A" pin="!POL" pad="27"/>
<connect gate="A" pin="CLK" pad="28"/>
<connect gate="A" pin="DATAIN" pad="32"/>
<connect gate="A" pin="DATAOUT" pad="23"/>
<connect gate="A" pin="HVOUT1" pad="22"/>
<connect gate="A" pin="HVOUT10" pad="13"/>
<connect gate="A" pin="HVOUT11" pad="12"/>
<connect gate="A" pin="HVOUT12" pad="11"/>
<connect gate="A" pin="HVOUT13" pad="10"/>
<connect gate="A" pin="HVOUT14" pad="9"/>
<connect gate="A" pin="HVOUT15" pad="8"/>
<connect gate="A" pin="HVOUT16" pad="7"/>
<connect gate="A" pin="HVOUT17" pad="6"/>
<connect gate="A" pin="HVOUT18" pad="5"/>
<connect gate="A" pin="HVOUT19" pad="4"/>
<connect gate="A" pin="HVOUT2" pad="21"/>
<connect gate="A" pin="HVOUT20" pad="3"/>
<connect gate="A" pin="HVOUT21" pad="2"/>
<connect gate="A" pin="HVOUT22" pad="1"/>
<connect gate="A" pin="HVOUT23" pad="44"/>
<connect gate="A" pin="HVOUT24" pad="43"/>
<connect gate="A" pin="HVOUT25" pad="42"/>
<connect gate="A" pin="HVOUT26" pad="41"/>
<connect gate="A" pin="HVOUT27" pad="40"/>
<connect gate="A" pin="HVOUT28" pad="39"/>
<connect gate="A" pin="HVOUT29" pad="38"/>
<connect gate="A" pin="HVOUT3" pad="20"/>
<connect gate="A" pin="HVOUT30" pad="37"/>
<connect gate="A" pin="HVOUT31" pad="36"/>
<connect gate="A" pin="HVOUT32" pad="35"/>
<connect gate="A" pin="HVOUT4" pad="19"/>
<connect gate="A" pin="HVOUT5" pad="18"/>
<connect gate="A" pin="HVOUT6" pad="17"/>
<connect gate="A" pin="HVOUT7" pad="16"/>
<connect gate="A" pin="HVOUT8" pad="15"/>
<connect gate="A" pin="HVOUT9" pad="14"/>
<connect gate="A" pin="NC" pad="34"/>
<connect gate="A" pin="NC_2" pad="24"/>
<connect gate="A" pin="NC_3" pad="25"/>
<connect gate="A" pin="NC_4" pad="26"/>
<connect gate="A" pin="VDD" pad="30"/>
<connect gate="A" pin="VSS" pad="29"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29231732/5"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="BUILT_BY" value="EMA_Jessica" constant="no"/>
<attribute name="COPYRIGHT" value="Copyright (C) 2018 Accelerated Designs. All rights reserved" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="HV5622PG-G" constant="no"/>
<attribute name="SOURCELIBRARY" value="Microchip_2019-08-23_19" constant="no"/>
<attribute name="VENDOR" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U6" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="HV5622PG-G" device="" package3d_urn="urn:adsk.eagle:package:29231732/5"/>
<part name="U7" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="HV5622PG-G" device="" package3d_urn="urn:adsk.eagle:package:29231732/5"/>
<part name="U8" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="HV5622PG-G" device="" package3d_urn="urn:adsk.eagle:package:29231732/5"/>
<part name="T0" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="IN-14" device="" package3d_urn="urn:adsk.eagle:package:29231731/1"/>
<part name="T1" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="IN-14" device="" package3d_urn="urn:adsk.eagle:package:29231731/1"/>
<part name="T2" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="IN-14" device="" package3d_urn="urn:adsk.eagle:package:29231731/1"/>
<part name="T3" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="IN-14" device="" package3d_urn="urn:adsk.eagle:package:29231731/1"/>
<part name="T5" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="IN-14" device="" package3d_urn="urn:adsk.eagle:package:29231731/1"/>
<part name="T6" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="IN-14" device="" package3d_urn="urn:adsk.eagle:package:29231731/1"/>
<part name="T7" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="IN-14" device="" package3d_urn="urn:adsk.eagle:package:29231731/1"/>
<part name="T4" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="IN-14" device="" package3d_urn="urn:adsk.eagle:package:29231731/1"/>
<part name="R7" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="33K"/>
<part name="R8" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="33K"/>
<part name="R9" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="33K"/>
<part name="R10" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="33K"/>
<part name="R11" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="33K"/>
<part name="R12" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="33K"/>
<part name="R13" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="33K"/>
<part name="R14" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="33K"/>
<part name="R15" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R16" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R17" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R18" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R19" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R20" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R21" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R22" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R23" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R24" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R25" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R26" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R27" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R28" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R29" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="R30" library="My Imported Components" library_urn="urn:adsk.eagle:library:29231634" deviceset="R-US" device="0207/10" package3d_urn="urn:adsk.eagle:package:29231757/1" value="243K"/>
<part name="J4" library="My Imported Components" deviceset="MA08-1" device="" package3d_urn="urn:adsk.eagle:package:8343/1" value="1"/>
<part name="C10" library="My Imported Components" deviceset="FK18X7R1H104K" device="" value="0.1µF"/>
<part name="C9" library="My Imported Components" deviceset="FK18X7R1H104K" device="" value="0.1µF"/>
<part name="C8" library="My Imported Components" deviceset="FK18X7R1H104K" device="" value="0.1µF"/>
<part name="NC4" library="My Imported Components" deviceset="MA02-1" device=""/>
<part name="NC5" library="My Imported Components" deviceset="MA02-1" device=""/>
<part name="NC6" library="My Imported Components" deviceset="MA02-1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U6" gate="A" x="58.42" y="73.66" smashed="yes">
<attribute name="NAME" x="55.88" y="58.42" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="55.88" y="55.88" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="U7" gate="A" x="154.94" y="73.66" smashed="yes">
<attribute name="NAME" x="152.4" y="58.42" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="152.4" y="55.88" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="U8" gate="A" x="248.92" y="73.66" smashed="yes">
<attribute name="NAME" x="246.38" y="58.42" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="246.38" y="55.88" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="T0" gate="G$1" x="20.32" y="160.02" smashed="yes">
<attribute name="NAME" x="20.32" y="164.465" size="1.27" layer="94" align="bottom-center"/>
<attribute name="VALUE" x="20.32" y="161.925" size="1.27" layer="94" align="bottom-center"/>
</instance>
<instance part="T1" gate="G$1" x="58.42" y="160.02" smashed="yes">
<attribute name="NAME" x="58.42" y="164.465" size="1.27" layer="94" align="bottom-center"/>
<attribute name="VALUE" x="58.42" y="161.925" size="1.27" layer="94" align="bottom-center"/>
</instance>
<instance part="T2" gate="G$1" x="96.52" y="160.02" smashed="yes">
<attribute name="NAME" x="96.52" y="164.465" size="1.27" layer="94" align="bottom-center"/>
<attribute name="VALUE" x="96.52" y="161.925" size="1.27" layer="94" align="bottom-center"/>
</instance>
<instance part="T3" gate="G$1" x="134.62" y="160.02" smashed="yes">
<attribute name="NAME" x="134.62" y="164.465" size="1.27" layer="94" align="bottom-center"/>
<attribute name="VALUE" x="134.62" y="161.925" size="1.27" layer="94" align="bottom-center"/>
</instance>
<instance part="T5" gate="G$1" x="210.82" y="160.02" smashed="yes">
<attribute name="NAME" x="210.82" y="164.465" size="1.27" layer="94" align="bottom-center"/>
<attribute name="VALUE" x="210.82" y="161.925" size="1.27" layer="94" align="bottom-center"/>
</instance>
<instance part="T6" gate="G$1" x="248.92" y="160.02" smashed="yes">
<attribute name="NAME" x="248.92" y="164.465" size="1.27" layer="94" align="bottom-center"/>
<attribute name="VALUE" x="248.92" y="161.925" size="1.27" layer="94" align="bottom-center"/>
</instance>
<instance part="T7" gate="G$1" x="287.02" y="160.02" smashed="yes">
<attribute name="NAME" x="287.02" y="164.465" size="1.27" layer="94" align="bottom-center"/>
<attribute name="VALUE" x="287.02" y="161.925" size="1.27" layer="94" align="bottom-center"/>
</instance>
<instance part="T4" gate="G$1" x="172.72" y="160.02" smashed="yes">
<attribute name="NAME" x="172.72" y="164.465" size="1.27" layer="94" align="bottom-center"/>
<attribute name="VALUE" x="172.72" y="161.925" size="1.27" layer="94" align="bottom-center"/>
</instance>
<instance part="R7" gate="G$1" x="20.32" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="18.8214" y="186.69" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="18.542" y="184.15" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R8" gate="G$1" x="58.42" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="56.9214" y="186.69" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="56.642" y="184.15" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R9" gate="G$1" x="96.52" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="95.0214" y="186.69" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="94.742" y="184.15" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R10" gate="G$1" x="134.62" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="133.1214" y="186.69" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="132.842" y="184.15" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R11" gate="G$1" x="172.72" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="171.2214" y="186.69" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="170.942" y="184.15" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R12" gate="G$1" x="210.82" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="209.3214" y="186.69" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="209.042" y="184.15" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R13" gate="G$1" x="248.92" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="247.4214" y="186.69" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="247.142" y="184.15" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R14" gate="G$1" x="287.02" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="285.5214" y="186.69" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="285.242" y="184.15" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R15" gate="G$1" x="12.7" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="11.2014" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="10.922" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R16" gate="G$1" x="27.94" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="26.4414" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="26.162" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R17" gate="G$1" x="50.8" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="49.3014" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="49.022" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R18" gate="G$1" x="66.04" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="64.5414" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="64.262" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R19" gate="G$1" x="88.9" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="87.4014" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="87.122" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R20" gate="G$1" x="104.14" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="102.6414" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="102.362" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R21" gate="G$1" x="127" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="125.5014" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="125.222" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R22" gate="G$1" x="142.24" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="140.7414" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="140.462" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R23" gate="G$1" x="165.1" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="163.6014" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="163.322" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R24" gate="G$1" x="180.34" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="178.8414" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="178.562" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R25" gate="G$1" x="203.2" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="201.7014" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="201.422" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R26" gate="G$1" x="218.44" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="216.9414" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="216.662" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R27" gate="G$1" x="241.3" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="239.8014" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="239.522" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R28" gate="G$1" x="256.54" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="255.0414" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="254.762" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R29" gate="G$1" x="279.4" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="277.9014" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="277.622" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R30" gate="G$1" x="294.64" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="293.1414" y="181.61" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="292.862" y="179.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="J4" gate="1" x="50.8" y="2.54" smashed="yes" rot="R90">
<attribute name="NAME" x="37.338" y="1.27" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="C10" gate="G$1" x="256.54" y="25.4" smashed="yes">
<attribute name="NAME" x="257.556" y="26.035" size="1.778" layer="95"/>
<attribute name="VALUE" x="257.556" y="21.209" size="1.778" layer="96"/>
</instance>
<instance part="C9" gate="G$1" x="170.18" y="25.4" smashed="yes">
<attribute name="NAME" x="171.196" y="26.035" size="1.778" layer="95"/>
<attribute name="VALUE" x="171.196" y="21.209" size="1.778" layer="96"/>
</instance>
<instance part="C8" gate="G$1" x="73.66" y="25.4" smashed="yes">
<attribute name="NAME" x="74.676" y="26.035" size="1.778" layer="95"/>
<attribute name="VALUE" x="74.676" y="21.209" size="1.778" layer="96"/>
</instance>
<instance part="NC4" gate="G$1" x="220.98" y="7.62" smashed="yes" rot="R90">
<attribute name="NAME" x="215.138" y="6.35" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="NC5" gate="G$1" x="73.66" y="203.2" smashed="yes" rot="R270">
<attribute name="NAME" x="79.502" y="204.47" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="NC6" gate="G$1" x="226.06" y="203.2" smashed="yes" rot="R270">
<attribute name="NAME" x="231.902" y="204.47" size="1.778" layer="95" rot="R270"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="U5-T0K2" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT10"/>
<wire x1="40.64" y1="83.82" x2="33.02" y2="83.82" width="0.1524" layer="91"/>
<wire x1="33.02" y1="83.82" x2="33.02" y2="161.2447875" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K2"/>
<wire x1="33.02" y1="161.2447875" x2="32.945909375" y2="161.2447875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K1" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT11"/>
<wire x1="40.64" y1="86.36" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
<wire x1="35.56" y1="86.36" x2="35.56" y2="168.331640625" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K1"/>
<wire x1="35.56" y1="168.331640625" x2="28.681425" y2="168.331640625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K3" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT9"/>
<wire x1="40.64" y1="81.28" x2="29.819853125" y2="81.28" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K3"/>
<wire x1="29.819853125" y1="81.28" x2="29.819853125" y2="153.87751875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K4" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT8"/>
<wire x1="40.64" y1="78.74" x2="27.05861875" y2="78.74" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K4"/>
<wire x1="27.05861875" y1="78.74" x2="27.05861875" y2="149.875240625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K5" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT7"/>
<wire x1="40.64" y1="76.2" x2="22.751796875" y2="76.2" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K5"/>
<wire x1="22.751796875" y1="76.2" x2="22.751796875" y2="147.615403125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K6" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT6"/>
<wire x1="40.64" y1="73.66" x2="17.888965625" y2="73.66" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K6"/>
<wire x1="17.888965625" y1="73.66" x2="17.888965625" y2="147.615146875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K7" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT5"/>
<wire x1="40.64" y1="71.12" x2="13.582903125" y2="71.12" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K7"/>
<wire x1="13.582903125" y1="71.12" x2="13.582903125" y2="149.87473125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K8" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT4"/>
<wire x1="40.64" y1="68.58" x2="10.8204" y2="68.58" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K8"/>
<wire x1="10.8204" y1="68.58" x2="10.8204" y2="153.87675625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K9" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT3"/>
<wire x1="40.64" y1="66.04" x2="7.62" y2="66.04" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K9"/>
<wire x1="7.62" y1="66.04" x2="7.62" y2="161.24428125" width="0.1524" layer="91"/>
<wire x1="7.62" y1="161.24428125" x2="7.6939125" y2="161.24428125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0K0" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT2"/>
<wire x1="40.64" y1="63.5" x2="5.08" y2="63.5" width="0.1524" layer="91"/>
<pinref part="T0" gate="G$1" pin="K0"/>
<wire x1="5.08" y1="63.5" x2="5.08" y2="168.331134375" width="0.1524" layer="91"/>
<wire x1="5.08" y1="168.331134375" x2="11.958065625" y2="168.331134375" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T0A" class="0">
<segment>
<pinref part="T0" gate="G$1" pin="A"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="20.32" y1="180.34" x2="20.32" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T1A" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="A"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="58.42" y1="180.34" x2="58.42" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T2A" class="0">
<segment>
<pinref part="T2" gate="G$1" pin="A"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="96.52" y1="180.34" x2="96.52" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T3A" class="0">
<segment>
<pinref part="T3" gate="G$1" pin="A"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="134.62" y1="180.34" x2="134.62" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T4A" class="0">
<segment>
<pinref part="T4" gate="G$1" pin="A"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="172.72" y1="180.34" x2="172.72" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T5A" class="0">
<segment>
<pinref part="T5" gate="G$1" pin="A"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="210.82" y1="180.34" x2="210.82" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T6A" class="0">
<segment>
<pinref part="T6" gate="G$1" pin="A"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="248.92" y1="180.34" x2="248.92" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T7A" class="0">
<segment>
<pinref part="T7" gate="G$1" pin="A"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="287.02" y1="180.34" x2="287.02" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0RDP1" class="0">
<segment>
<pinref part="T0" gate="G$1" pin="RDP"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="15.5978875" y1="171.55591875" x2="15.5978875" y2="175.26" width="0.1524" layer="91"/>
<wire x1="15.5978875" y1="175.26" x2="12.7" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0LDP1" class="0">
<segment>
<pinref part="T0" gate="G$1" pin="LDP"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="25.04153125" y1="171.556246875" x2="25.04153125" y2="175.26" width="0.1524" layer="91"/>
<wire x1="25.04153125" y1="175.26" x2="27.94" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1RDP1" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="RDP"/>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="53.6978875" y1="171.55591875" x2="53.6978875" y2="175.26" width="0.1524" layer="91"/>
<wire x1="53.6978875" y1="175.26" x2="50.8" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1LDP1" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="LDP"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="63.14153125" y1="171.556246875" x2="63.14153125" y2="175.26" width="0.1524" layer="91"/>
<wire x1="63.14153125" y1="175.26" x2="66.04" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2RDP1" class="0">
<segment>
<pinref part="T2" gate="G$1" pin="RDP"/>
<pinref part="R19" gate="G$1" pin="1"/>
<wire x1="91.7978875" y1="171.55591875" x2="91.7978875" y2="175.26" width="0.1524" layer="91"/>
<wire x1="91.7978875" y1="175.26" x2="88.9" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T2LDP1" class="0">
<segment>
<pinref part="T2" gate="G$1" pin="LDP"/>
<pinref part="R20" gate="G$1" pin="1"/>
<wire x1="101.24153125" y1="171.556246875" x2="101.24153125" y2="175.26" width="0.1524" layer="91"/>
<wire x1="101.24153125" y1="175.26" x2="104.14" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3RDP1" class="0">
<segment>
<pinref part="T3" gate="G$1" pin="RDP"/>
<pinref part="R21" gate="G$1" pin="1"/>
<wire x1="129.8978875" y1="171.55591875" x2="129.8978875" y2="175.26" width="0.1524" layer="91"/>
<wire x1="129.8978875" y1="175.26" x2="127" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3LDP1" class="0">
<segment>
<pinref part="T3" gate="G$1" pin="LDP"/>
<pinref part="R22" gate="G$1" pin="1"/>
<wire x1="139.34153125" y1="171.556246875" x2="139.34153125" y2="175.26" width="0.1524" layer="91"/>
<wire x1="139.34153125" y1="175.26" x2="142.24" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4RDP1" class="0">
<segment>
<pinref part="T4" gate="G$1" pin="RDP"/>
<pinref part="R23" gate="G$1" pin="1"/>
<wire x1="167.9978875" y1="171.55591875" x2="167.9978875" y2="175.26" width="0.1524" layer="91"/>
<wire x1="167.9978875" y1="175.26" x2="165.1" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4LDP1" class="0">
<segment>
<pinref part="T4" gate="G$1" pin="LDP"/>
<pinref part="R24" gate="G$1" pin="1"/>
<wire x1="177.44153125" y1="171.556246875" x2="177.44153125" y2="175.26" width="0.1524" layer="91"/>
<wire x1="177.44153125" y1="175.26" x2="180.34" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T5RDP1" class="0">
<segment>
<pinref part="T5" gate="G$1" pin="RDP"/>
<pinref part="R25" gate="G$1" pin="1"/>
<wire x1="206.0978875" y1="171.55591875" x2="206.0978875" y2="175.26" width="0.1524" layer="91"/>
<wire x1="206.0978875" y1="175.26" x2="203.2" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5LDP1" class="0">
<segment>
<pinref part="T5" gate="G$1" pin="LDP"/>
<pinref part="R26" gate="G$1" pin="1"/>
<wire x1="215.54153125" y1="171.556246875" x2="215.54153125" y2="175.26" width="0.1524" layer="91"/>
<wire x1="215.54153125" y1="175.26" x2="218.44" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6RDP1" class="0">
<segment>
<pinref part="T6" gate="G$1" pin="RDP"/>
<pinref part="R27" gate="G$1" pin="1"/>
<wire x1="244.1978875" y1="171.55591875" x2="244.1978875" y2="175.26" width="0.1524" layer="91"/>
<wire x1="244.1978875" y1="175.26" x2="241.3" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6LDP1" class="0">
<segment>
<pinref part="T6" gate="G$1" pin="LDP"/>
<pinref part="R28" gate="G$1" pin="1"/>
<wire x1="253.64153125" y1="171.556246875" x2="253.64153125" y2="175.26" width="0.1524" layer="91"/>
<wire x1="253.64153125" y1="175.26" x2="256.54" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7RDP1" class="0">
<segment>
<pinref part="T7" gate="G$1" pin="RDP"/>
<pinref part="R29" gate="G$1" pin="1"/>
<wire x1="282.2978875" y1="171.55591875" x2="282.2978875" y2="175.26" width="0.1524" layer="91"/>
<wire x1="282.2978875" y1="175.26" x2="279.4" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7LDP1" class="0">
<segment>
<pinref part="T7" gate="G$1" pin="LDP"/>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="291.74153125" y1="171.556246875" x2="291.74153125" y2="175.26" width="0.1524" layer="91"/>
<wire x1="291.74153125" y1="175.26" x2="294.64" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0RDP" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT1"/>
<wire x1="40.64" y1="60.96" x2="2.54" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="2.54" y1="60.96" x2="2.54" y2="185.42" width="0.1524" layer="91"/>
<wire x1="2.54" y1="185.42" x2="12.7" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T0LDP" class="0">
<segment>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="38.1" y1="185.42" x2="27.94" y2="185.42" width="0.1524" layer="91"/>
<pinref part="U6" gate="A" pin="HVOUT12"/>
<wire x1="38.1" y1="127" x2="38.1" y2="185.42" width="0.1524" layer="91"/>
<wire x1="45.72" y1="104.14" x2="45.72" y2="127" width="0.1524" layer="91"/>
<wire x1="45.72" y1="127" x2="38.1" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1RDP" class="0">
<segment>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="U6" gate="A" pin="HVOUT13"/>
<wire x1="48.26" y1="104.14" x2="48.26" y2="129.54" width="0.1524" layer="91"/>
<wire x1="48.26" y1="129.54" x2="40.64" y2="129.54" width="0.1524" layer="91"/>
<wire x1="40.64" y1="129.54" x2="40.64" y2="185.42" width="0.1524" layer="91"/>
<wire x1="40.64" y1="185.42" x2="50.8" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1LDP" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT24"/>
<wire x1="76.2" y1="83.82" x2="81.28" y2="83.82" width="0.1524" layer="91"/>
<wire x1="81.28" y1="83.82" x2="81.28" y2="129.54" width="0.1524" layer="91"/>
<wire x1="81.28" y1="129.54" x2="76.2" y2="129.54" width="0.1524" layer="91"/>
<wire x1="76.2" y1="129.54" x2="76.2" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="76.2" y1="185.42" x2="66.04" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2RDP" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT25"/>
<wire x1="76.2" y1="81.28" x2="83.82" y2="81.28" width="0.1524" layer="91"/>
<wire x1="83.82" y1="81.28" x2="83.82" y2="132.08" width="0.1524" layer="91"/>
<wire x1="83.82" y1="132.08" x2="78.74" y2="132.08" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="2"/>
<wire x1="78.74" y1="132.08" x2="78.74" y2="185.42" width="0.1524" layer="91"/>
<wire x1="78.74" y1="185.42" x2="88.9" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2K0" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT26"/>
<wire x1="76.2" y1="78.74" x2="86.36" y2="78.74" width="0.1524" layer="91"/>
<wire x1="86.36" y1="78.74" x2="86.36" y2="134.62" width="0.1524" layer="91"/>
<wire x1="86.36" y1="134.62" x2="81.28" y2="134.62" width="0.1524" layer="91"/>
<wire x1="81.28" y1="134.62" x2="81.28" y2="168.331134375" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="K0"/>
<wire x1="81.28" y1="168.331134375" x2="88.158065625" y2="168.331134375" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2K9" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT27"/>
<wire x1="76.2" y1="76.2" x2="88.9" y2="76.2" width="0.1524" layer="91"/>
<wire x1="88.9" y1="76.2" x2="88.9" y2="137.16" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="K9"/>
<wire x1="88.9" y1="137.16" x2="83.8939125" y2="137.16" width="0.1524" layer="91"/>
<wire x1="83.8939125" y1="137.16" x2="83.8939125" y2="161.24428125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2K8" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT28"/>
<wire x1="76.2" y1="73.66" x2="91.44" y2="73.66" width="0.1524" layer="91"/>
<wire x1="91.44" y1="73.66" x2="91.44" y2="139.7" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="K8"/>
<wire x1="91.44" y1="139.7" x2="87.0204" y2="139.7" width="0.1524" layer="91"/>
<wire x1="87.0204" y1="139.7" x2="87.0204" y2="153.87675625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2K7" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT29"/>
<wire x1="76.2" y1="71.12" x2="93.98" y2="71.12" width="0.1524" layer="91"/>
<wire x1="93.98" y1="71.12" x2="93.98" y2="142.24" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="K7"/>
<wire x1="93.98" y1="142.24" x2="89.782903125" y2="142.24" width="0.1524" layer="91"/>
<wire x1="89.782903125" y1="142.24" x2="89.782903125" y2="149.87473125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K5" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT19"/>
<wire x1="63.5" y1="104.14" x2="63.5" y2="144.78" width="0.1524" layer="91"/>
<wire x1="63.5" y1="144.78" x2="60.851796875" y2="144.78" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K5"/>
<wire x1="60.851796875" y1="144.78" x2="60.851796875" y2="147.615403125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K3" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT21"/>
<wire x1="68.58" y1="104.14" x2="68.58" y2="153.87751875" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K3"/>
<wire x1="68.58" y1="153.87751875" x2="67.919853125" y2="153.87751875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K2" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT22"/>
<wire x1="71.12" y1="104.14" x2="71.12" y2="161.2447875" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K2"/>
<wire x1="71.12" y1="161.2447875" x2="71.045909375" y2="161.2447875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K1" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT23"/>
<wire x1="76.2" y1="86.36" x2="78.74" y2="86.36" width="0.1524" layer="91"/>
<wire x1="78.74" y1="127" x2="73.66" y2="127" width="0.1524" layer="91"/>
<wire x1="73.66" y1="127" x2="73.66" y2="168.331640625" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K1"/>
<wire x1="73.66" y1="168.331640625" x2="66.781425" y2="168.331640625" width="0.1524" layer="91"/>
<wire x1="78.74" y1="86.36" x2="78.74" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2K6" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT30"/>
<wire x1="76.2" y1="68.58" x2="96.52" y2="68.58" width="0.1524" layer="91"/>
<wire x1="96.52" y1="68.58" x2="96.52" y2="144.78" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="K6"/>
<wire x1="96.52" y1="144.78" x2="94.088965625" y2="144.78" width="0.1524" layer="91"/>
<wire x1="94.088965625" y1="144.78" x2="94.088965625" y2="147.615146875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2K4" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT32"/>
<wire x1="76.2" y1="63.5" x2="103.25861875" y2="63.5" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="K4"/>
<wire x1="103.25861875" y1="63.5" x2="103.25861875" y2="149.875240625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T2K2" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT2"/>
<wire x1="137.16" y1="63.5" x2="109.22" y2="63.5" width="0.1524" layer="91"/>
<wire x1="109.22" y1="63.5" x2="109.22" y2="161.2447875" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="K2"/>
<wire x1="109.22" y1="161.2447875" x2="109.145909375" y2="161.2447875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T2K1" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT3"/>
<wire x1="137.16" y1="66.04" x2="111.76" y2="66.04" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="K1"/>
<wire x1="111.76" y1="66.04" x2="111.76" y2="168.331640625" width="0.1524" layer="91"/>
<wire x1="111.76" y1="168.331640625" x2="104.881425" y2="168.331640625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T2LDP" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT4"/>
<wire x1="137.16" y1="68.58" x2="114.3" y2="68.58" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="114.3" y1="68.58" x2="114.3" y2="185.42" width="0.1524" layer="91"/>
<wire x1="114.3" y1="185.42" x2="104.14" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3RDP" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT5"/>
<wire x1="137.16" y1="71.12" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="116.84" y1="71.12" x2="116.84" y2="185.42" width="0.1524" layer="91"/>
<wire x1="116.84" y1="185.42" x2="127" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K0" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT6"/>
<wire x1="137.16" y1="73.66" x2="119.38" y2="73.66" width="0.1524" layer="91"/>
<wire x1="119.38" y1="73.66" x2="119.38" y2="168.331134375" width="0.1524" layer="91"/>
<pinref part="T3" gate="G$1" pin="K0"/>
<wire x1="119.38" y1="168.331134375" x2="126.258065625" y2="168.331134375" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K9" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT7"/>
<wire x1="137.16" y1="76.2" x2="121.92" y2="76.2" width="0.1524" layer="91"/>
<wire x1="121.92" y1="76.2" x2="121.92" y2="161.24428125" width="0.1524" layer="91"/>
<pinref part="T3" gate="G$1" pin="K9"/>
<wire x1="121.92" y1="161.24428125" x2="121.9939125" y2="161.24428125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K8" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT8"/>
<wire x1="137.16" y1="78.74" x2="124.46" y2="78.74" width="0.1524" layer="91"/>
<wire x1="124.46" y1="78.74" x2="124.46" y2="152.4" width="0.1524" layer="91"/>
<pinref part="T3" gate="G$1" pin="K8"/>
<wire x1="124.46" y1="152.4" x2="125.1204" y2="152.4" width="0.1524" layer="91"/>
<wire x1="125.1204" y1="152.4" x2="125.1204" y2="153.87675625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K7" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT9"/>
<wire x1="137.16" y1="81.28" x2="127.882903125" y2="81.28" width="0.1524" layer="91"/>
<pinref part="T3" gate="G$1" pin="K7"/>
<wire x1="127.882903125" y1="81.28" x2="127.882903125" y2="149.87473125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K5" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT11"/>
<wire x1="137.16" y1="86.36" x2="134.62" y2="86.36" width="0.1524" layer="91"/>
<wire x1="134.62" y1="86.36" x2="134.62" y2="144.78" width="0.1524" layer="91"/>
<wire x1="134.62" y1="144.78" x2="137.051796875" y2="144.78" width="0.1524" layer="91"/>
<pinref part="T3" gate="G$1" pin="K5"/>
<wire x1="137.051796875" y1="144.78" x2="137.051796875" y2="147.615403125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K4" class="0">
<segment>
<wire x1="142.24" y1="104.14" x2="142.24" y2="149.875240625" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="HVOUT12"/>
<pinref part="T3" gate="G$1" pin="K4"/>
<wire x1="142.24" y1="149.875240625" x2="141.35861875" y2="149.875240625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K3" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT13"/>
<wire x1="144.78" y1="104.14" x2="144.78" y2="153.87751875" width="0.1524" layer="91"/>
<pinref part="T3" gate="G$1" pin="K3"/>
<wire x1="144.78" y1="153.87751875" x2="144.119853125" y2="153.87751875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K2" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT14"/>
<wire x1="147.32" y1="104.14" x2="147.32" y2="161.2447875" width="0.1524" layer="91"/>
<pinref part="T3" gate="G$1" pin="K2"/>
<wire x1="147.32" y1="161.2447875" x2="147.245909375" y2="161.2447875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K1" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT15"/>
<pinref part="T3" gate="G$1" pin="K1"/>
<wire x1="149.86" y1="104.14" x2="149.86" y2="168.331640625" width="0.1524" layer="91"/>
<wire x1="149.86" y1="168.331640625" x2="142.981425" y2="168.331640625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3LDP" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT16"/>
<pinref part="R22" gate="G$1" pin="2"/>
<wire x1="152.4" y1="104.14" x2="152.4" y2="185.42" width="0.1524" layer="91"/>
<wire x1="152.4" y1="185.42" x2="142.24" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4RDP" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT17"/>
<pinref part="R23" gate="G$1" pin="2"/>
<wire x1="154.94" y1="104.14" x2="154.94" y2="185.42" width="0.1524" layer="91"/>
<wire x1="154.94" y1="185.42" x2="165.1" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K0" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT18"/>
<pinref part="T4" gate="G$1" pin="K0"/>
<wire x1="157.48" y1="104.14" x2="157.48" y2="168.331134375" width="0.1524" layer="91"/>
<wire x1="157.48" y1="168.331134375" x2="164.358065625" y2="168.331134375" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K9" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT19"/>
<pinref part="T4" gate="G$1" pin="K9"/>
<wire x1="160.02" y1="104.14" x2="160.02" y2="161.24428125" width="0.1524" layer="91"/>
<wire x1="160.02" y1="161.24428125" x2="160.0939125" y2="161.24428125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K8" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT20"/>
<wire x1="162.56" y1="104.14" x2="162.56" y2="152.4" width="0.1524" layer="91"/>
<pinref part="T4" gate="G$1" pin="K8"/>
<wire x1="162.56" y1="152.4" x2="163.2204" y2="152.4" width="0.1524" layer="91"/>
<wire x1="163.2204" y1="152.4" x2="163.2204" y2="153.87675625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K7" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT21"/>
<wire x1="165.1" y1="104.14" x2="165.1" y2="147.32" width="0.1524" layer="91"/>
<pinref part="T4" gate="G$1" pin="K7"/>
<wire x1="165.1" y1="147.32" x2="165.982903125" y2="147.32" width="0.1524" layer="91"/>
<wire x1="165.982903125" y1="147.32" x2="165.982903125" y2="149.87473125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K6" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT22"/>
<wire x1="167.64" y1="104.14" x2="167.64" y2="144.78" width="0.1524" layer="91"/>
<pinref part="T4" gate="G$1" pin="K6"/>
<wire x1="167.64" y1="144.78" x2="170.288965625" y2="144.78" width="0.1524" layer="91"/>
<wire x1="170.288965625" y1="144.78" x2="170.288965625" y2="147.615146875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K4" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT24"/>
<wire x1="172.72" y1="83.82" x2="179.45861875" y2="83.82" width="0.1524" layer="91"/>
<pinref part="T4" gate="G$1" pin="K4"/>
<wire x1="179.45861875" y1="83.82" x2="179.45861875" y2="149.875240625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K2" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT26"/>
<wire x1="172.72" y1="78.74" x2="185.42" y2="78.74" width="0.1524" layer="91"/>
<wire x1="185.42" y1="78.74" x2="185.42" y2="161.2447875" width="0.1524" layer="91"/>
<pinref part="T4" gate="G$1" pin="K2"/>
<wire x1="185.42" y1="161.2447875" x2="185.345909375" y2="161.2447875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K1" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT27"/>
<wire x1="172.72" y1="76.2" x2="187.96" y2="76.2" width="0.1524" layer="91"/>
<wire x1="187.96" y1="76.2" x2="187.96" y2="168.331640625" width="0.1524" layer="91"/>
<pinref part="T4" gate="G$1" pin="K1"/>
<wire x1="187.96" y1="168.331640625" x2="181.081425" y2="168.331640625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4LDP" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT28"/>
<wire x1="172.72" y1="73.66" x2="190.5" y2="73.66" width="0.1524" layer="91"/>
<wire x1="190.5" y1="73.66" x2="190.5" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R24" gate="G$1" pin="2"/>
<wire x1="190.5" y1="185.42" x2="180.34" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T5RDP" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT29"/>
<wire x1="172.72" y1="71.12" x2="193.04" y2="71.12" width="0.1524" layer="91"/>
<wire x1="193.04" y1="71.12" x2="193.04" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R25" gate="G$1" pin="2"/>
<wire x1="193.04" y1="185.42" x2="203.2" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T5K0" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT30"/>
<wire x1="172.72" y1="68.58" x2="195.58" y2="68.58" width="0.1524" layer="91"/>
<wire x1="195.58" y1="68.58" x2="195.58" y2="168.331134375" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="K0"/>
<wire x1="195.58" y1="168.331134375" x2="202.458065625" y2="168.331134375" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K0" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT14"/>
<wire x1="50.8" y1="104.14" x2="50.8" y2="132.08" width="0.1524" layer="91"/>
<wire x1="50.8" y1="132.08" x2="43.18" y2="132.08" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K0"/>
<wire x1="43.18" y1="132.08" x2="43.18" y2="168.331134375" width="0.1524" layer="91"/>
<wire x1="43.18" y1="168.331134375" x2="50.058065625" y2="168.331134375" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K9" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT15"/>
<wire x1="53.34" y1="104.14" x2="53.34" y2="134.62" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K9"/>
<wire x1="53.34" y1="134.62" x2="45.7939125" y2="134.62" width="0.1524" layer="91"/>
<wire x1="45.7939125" y1="134.62" x2="45.7939125" y2="161.24428125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K8" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT16"/>
<wire x1="55.88" y1="104.14" x2="55.88" y2="137.16" width="0.1524" layer="91"/>
<wire x1="55.88" y1="137.16" x2="48.9204" y2="137.16" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K8"/>
<wire x1="48.9204" y1="137.16" x2="48.9204" y2="153.87675625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K7" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT17"/>
<wire x1="58.42" y1="104.14" x2="58.42" y2="139.7" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K7"/>
<wire x1="58.42" y1="139.7" x2="51.682903125" y2="139.7" width="0.1524" layer="91"/>
<wire x1="51.682903125" y1="139.7" x2="51.682903125" y2="149.87473125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K6" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT18"/>
<wire x1="60.96" y1="104.14" x2="60.96" y2="142.24" width="0.1524" layer="91"/>
<wire x1="60.96" y1="142.24" x2="55.988965625" y2="142.24" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K6"/>
<wire x1="55.988965625" y1="142.24" x2="55.988965625" y2="147.615146875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T1K4" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT20"/>
<wire x1="66.04" y1="104.14" x2="66.04" y2="149.875240625" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="K4"/>
<wire x1="66.04" y1="149.875240625" x2="65.15861875" y2="149.875240625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U5-T2K5" class="0">
<segment>
<pinref part="U6" gate="A" pin="HVOUT31"/>
<pinref part="T2" gate="G$1" pin="K5"/>
<wire x1="76.2" y1="66.04" x2="98.951796875" y2="66.04" width="0.1524" layer="91"/>
<wire x1="98.951796875" y1="66.04" x2="98.951796875" y2="147.615403125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T2K3" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT1"/>
<pinref part="T2" gate="G$1" pin="K3"/>
<wire x1="137.16" y1="60.96" x2="106.019853125" y2="60.96" width="0.1524" layer="91"/>
<wire x1="106.019853125" y1="60.96" x2="106.019853125" y2="153.87751875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T3K6" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT10"/>
<pinref part="T3" gate="G$1" pin="K6"/>
<wire x1="137.16" y1="83.82" x2="132.188965625" y2="83.82" width="0.1524" layer="91"/>
<wire x1="132.188965625" y1="83.82" x2="132.188965625" y2="147.615146875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T5K8" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT32"/>
<pinref part="T5" gate="G$1" pin="K8"/>
<wire x1="172.72" y1="63.5" x2="201.3204" y2="63.5" width="0.1524" layer="91"/>
<wire x1="201.3204" y1="63.5" x2="201.3204" y2="153.87675625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T5K9" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT31"/>
<wire x1="172.72" y1="66.04" x2="198.1939125" y2="66.04" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="K9"/>
<wire x1="198.1939125" y1="66.04" x2="198.1939125" y2="161.24428125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K3" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT25"/>
<pinref part="T4" gate="G$1" pin="K3"/>
<wire x1="172.72" y1="81.28" x2="182.219853125" y2="81.28" width="0.1524" layer="91"/>
<wire x1="182.219853125" y1="81.28" x2="182.219853125" y2="153.87751875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-T4K5" class="0">
<segment>
<pinref part="U7" gate="A" pin="HVOUT23"/>
<wire x1="172.72" y1="86.36" x2="175.26" y2="86.36" width="0.1524" layer="91"/>
<pinref part="T4" gate="G$1" pin="K5"/>
<wire x1="175.26" y1="86.36" x2="175.26" y2="147.615403125" width="0.1524" layer="91"/>
<wire x1="175.26" y1="147.615403125" x2="175.151796875" y2="147.615403125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5LDP" class="0">
<segment>
<pinref part="R26" gate="G$1" pin="2"/>
<wire x1="228.6" y1="185.42" x2="218.44" y2="185.42" width="0.1524" layer="91"/>
<pinref part="U8" gate="A" pin="HVOUT8"/>
<wire x1="231.14" y1="78.74" x2="220.98" y2="78.74" width="0.1524" layer="91"/>
<wire x1="220.98" y1="78.74" x2="220.98" y2="129.54" width="0.1524" layer="91"/>
<wire x1="220.98" y1="129.54" x2="228.6" y2="129.54" width="0.1524" layer="91"/>
<wire x1="228.6" y1="129.54" x2="228.6" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K9" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT11"/>
<wire x1="231.14" y1="86.36" x2="228.6" y2="86.36" width="0.1524" layer="91"/>
<wire x1="228.6" y1="86.36" x2="228.6" y2="121.92" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K9"/>
<wire x1="228.6" y1="121.92" x2="236.2939125" y2="121.92" width="0.1524" layer="91"/>
<wire x1="236.2939125" y1="121.92" x2="236.2939125" y2="161.24428125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K0" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT10"/>
<wire x1="231.14" y1="83.82" x2="226.06" y2="83.82" width="0.1524" layer="91"/>
<wire x1="226.06" y1="83.82" x2="226.06" y2="124.46" width="0.1524" layer="91"/>
<wire x1="226.06" y1="124.46" x2="233.68" y2="124.46" width="0.1524" layer="91"/>
<wire x1="233.68" y1="124.46" x2="233.68" y2="168.331134375" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K0"/>
<wire x1="233.68" y1="168.331134375" x2="240.558065625" y2="168.331134375" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6RDP" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT9"/>
<wire x1="231.14" y1="81.28" x2="223.52" y2="81.28" width="0.1524" layer="91"/>
<wire x1="223.52" y1="81.28" x2="223.52" y2="127" width="0.1524" layer="91"/>
<wire x1="223.52" y1="127" x2="231.14" y2="127" width="0.1524" layer="91"/>
<wire x1="231.14" y1="127" x2="231.14" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="2"/>
<wire x1="231.14" y1="185.42" x2="241.3" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5K1" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT7"/>
<wire x1="231.14" y1="76.2" x2="218.44" y2="76.2" width="0.1524" layer="91"/>
<wire x1="218.44" y1="76.2" x2="218.44" y2="132.08" width="0.1524" layer="91"/>
<wire x1="218.44" y1="132.08" x2="226.06" y2="132.08" width="0.1524" layer="91"/>
<wire x1="226.06" y1="132.08" x2="226.06" y2="168.331640625" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="K1"/>
<wire x1="226.06" y1="168.331640625" x2="219.181425" y2="168.331640625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5K2" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT6"/>
<wire x1="231.14" y1="73.66" x2="215.9" y2="73.66" width="0.1524" layer="91"/>
<wire x1="215.9" y1="73.66" x2="215.9" y2="134.62" width="0.1524" layer="91"/>
<wire x1="215.9" y1="134.62" x2="223.445909375" y2="134.62" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="K2"/>
<wire x1="223.445909375" y1="134.62" x2="223.445909375" y2="161.2447875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5K3" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT5"/>
<wire x1="231.14" y1="71.12" x2="213.36" y2="71.12" width="0.1524" layer="91"/>
<wire x1="213.36" y1="71.12" x2="213.36" y2="137.16" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="K3"/>
<wire x1="213.36" y1="137.16" x2="220.319853125" y2="137.16" width="0.1524" layer="91"/>
<wire x1="220.319853125" y1="137.16" x2="220.319853125" y2="153.87751875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5K4" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT4"/>
<wire x1="231.14" y1="68.58" x2="210.82" y2="68.58" width="0.1524" layer="91"/>
<wire x1="210.82" y1="68.58" x2="210.82" y2="139.7" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="K4"/>
<wire x1="210.82" y1="139.7" x2="217.55861875" y2="139.7" width="0.1524" layer="91"/>
<wire x1="217.55861875" y1="139.7" x2="217.55861875" y2="149.875240625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5K5" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT3"/>
<wire x1="231.14" y1="66.04" x2="208.28" y2="66.04" width="0.1524" layer="91"/>
<wire x1="208.28" y1="66.04" x2="208.28" y2="142.24" width="0.1524" layer="91"/>
<wire x1="208.28" y1="142.24" x2="213.251796875" y2="142.24" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="K5"/>
<wire x1="213.251796875" y1="142.24" x2="213.251796875" y2="147.615403125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5K6" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT2"/>
<wire x1="231.14" y1="63.5" x2="205.74" y2="63.5" width="0.1524" layer="91"/>
<wire x1="205.74" y1="63.5" x2="205.74" y2="144.78" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="K6"/>
<wire x1="205.74" y1="144.78" x2="208.388965625" y2="144.78" width="0.1524" layer="91"/>
<wire x1="208.388965625" y1="144.78" x2="208.388965625" y2="147.615146875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T5K7" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT1"/>
<pinref part="T5" gate="G$1" pin="K7"/>
<wire x1="231.14" y1="60.96" x2="204.082903125" y2="60.96" width="0.1524" layer="91"/>
<wire x1="204.082903125" y1="60.96" x2="204.082903125" y2="149.87473125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K3" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT17"/>
<wire x1="248.92" y1="104.14" x2="248.92" y2="119.38" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K3"/>
<wire x1="248.92" y1="119.38" x2="258.419853125" y2="119.38" width="0.1524" layer="91"/>
<wire x1="258.419853125" y1="119.38" x2="258.419853125" y2="153.87751875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7LDP" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT32"/>
<wire x1="266.7" y1="63.5" x2="304.8" y2="63.5" width="0.1524" layer="91"/>
<wire x1="304.8" y1="63.5" x2="304.8" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R30" gate="G$1" pin="2"/>
<wire x1="304.8" y1="185.42" x2="294.64" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K1" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT31"/>
<wire x1="266.7" y1="66.04" x2="302.26" y2="66.04" width="0.1524" layer="91"/>
<wire x1="302.26" y1="66.04" x2="302.26" y2="168.331640625" width="0.1524" layer="91"/>
<pinref part="T7" gate="G$1" pin="K1"/>
<wire x1="302.26" y1="168.331640625" x2="295.381425" y2="168.331640625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K2" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT30"/>
<wire x1="266.7" y1="68.58" x2="299.645909375" y2="68.58" width="0.1524" layer="91"/>
<pinref part="T7" gate="G$1" pin="K2"/>
<wire x1="299.645909375" y1="68.58" x2="299.645909375" y2="161.2447875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K3" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT29"/>
<pinref part="T7" gate="G$1" pin="K3"/>
<wire x1="266.7" y1="71.12" x2="296.519853125" y2="71.12" width="0.1524" layer="91"/>
<wire x1="296.519853125" y1="71.12" x2="296.519853125" y2="153.87751875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K4" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT28"/>
<pinref part="T7" gate="G$1" pin="K4"/>
<wire x1="266.7" y1="73.66" x2="293.75861875" y2="73.66" width="0.1524" layer="91"/>
<wire x1="293.75861875" y1="73.66" x2="293.75861875" y2="149.875240625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K5" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT27"/>
<pinref part="T7" gate="G$1" pin="K5"/>
<wire x1="266.7" y1="76.2" x2="289.451796875" y2="76.2" width="0.1524" layer="91"/>
<wire x1="289.451796875" y1="76.2" x2="289.451796875" y2="147.615403125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K6" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT26"/>
<pinref part="T7" gate="G$1" pin="K6"/>
<wire x1="266.7" y1="78.74" x2="284.588965625" y2="78.74" width="0.1524" layer="91"/>
<wire x1="284.588965625" y1="78.74" x2="284.588965625" y2="147.615146875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K7" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT25"/>
<pinref part="T7" gate="G$1" pin="K7"/>
<wire x1="266.7" y1="81.28" x2="280.282903125" y2="81.28" width="0.1524" layer="91"/>
<wire x1="280.282903125" y1="81.28" x2="280.282903125" y2="149.87473125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K8" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT24"/>
<pinref part="T7" gate="G$1" pin="K8"/>
<wire x1="266.7" y1="83.82" x2="277.5204" y2="83.82" width="0.1524" layer="91"/>
<wire x1="277.5204" y1="83.82" x2="277.5204" y2="153.87675625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K9" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT23"/>
<pinref part="T7" gate="G$1" pin="K9"/>
<wire x1="266.7" y1="86.36" x2="274.3939125" y2="86.36" width="0.1524" layer="91"/>
<wire x1="274.3939125" y1="86.36" x2="274.3939125" y2="161.24428125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7K0" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT22"/>
<wire x1="261.62" y1="104.14" x2="261.62" y2="106.68" width="0.1524" layer="91"/>
<wire x1="261.62" y1="106.68" x2="271.78" y2="106.68" width="0.1524" layer="91"/>
<wire x1="271.78" y1="106.68" x2="271.78" y2="168.331134375" width="0.1524" layer="91"/>
<pinref part="T7" gate="G$1" pin="K0"/>
<wire x1="271.78" y1="168.331134375" x2="278.658065625" y2="168.331134375" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T7RDP" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT21"/>
<wire x1="259.08" y1="104.14" x2="259.08" y2="109.22" width="0.1524" layer="91"/>
<wire x1="259.08" y1="109.22" x2="269.24" y2="109.22" width="0.1524" layer="91"/>
<wire x1="269.24" y1="109.22" x2="269.24" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R29" gate="G$1" pin="2"/>
<wire x1="269.24" y1="185.42" x2="279.4" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6LDP" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT20"/>
<wire x1="256.54" y1="104.14" x2="256.54" y2="111.76" width="0.1524" layer="91"/>
<wire x1="256.54" y1="111.76" x2="266.7" y2="111.76" width="0.1524" layer="91"/>
<pinref part="R28" gate="G$1" pin="2"/>
<wire x1="266.7" y1="111.76" x2="266.7" y2="185.42" width="0.1524" layer="91"/>
<wire x1="266.7" y1="185.42" x2="256.54" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K1" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT19"/>
<wire x1="254" y1="104.14" x2="254" y2="114.3" width="0.1524" layer="91"/>
<wire x1="254" y1="114.3" x2="264.16" y2="114.3" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K1"/>
<wire x1="264.16" y1="114.3" x2="264.16" y2="168.331640625" width="0.1524" layer="91"/>
<wire x1="264.16" y1="168.331640625" x2="257.281425" y2="168.331640625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K2" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT18"/>
<wire x1="251.46" y1="104.14" x2="251.46" y2="116.84" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K2"/>
<wire x1="261.545909375" y1="161.2447875" x2="261.545909375" y2="116.84" width="0.1524" layer="91"/>
<wire x1="261.545909375" y1="116.84" x2="251.46" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K4" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT16"/>
<wire x1="246.38" y1="104.14" x2="246.38" y2="121.92" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K4"/>
<wire x1="246.38" y1="121.92" x2="255.65861875" y2="121.92" width="0.1524" layer="91"/>
<wire x1="255.65861875" y1="121.92" x2="255.65861875" y2="149.875240625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K5" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT15"/>
<wire x1="243.84" y1="104.14" x2="243.84" y2="124.46" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K5"/>
<wire x1="243.84" y1="124.46" x2="251.351796875" y2="124.46" width="0.1524" layer="91"/>
<wire x1="251.351796875" y1="124.46" x2="251.351796875" y2="147.615403125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K6" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT14"/>
<wire x1="241.3" y1="104.14" x2="241.3" y2="127" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K6"/>
<wire x1="241.3" y1="127" x2="246.488965625" y2="127" width="0.1524" layer="91"/>
<wire x1="246.488965625" y1="127" x2="246.488965625" y2="147.615146875" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K7" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT13"/>
<wire x1="238.76" y1="104.14" x2="238.76" y2="129.54" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K7"/>
<wire x1="238.76" y1="129.54" x2="242.182903125" y2="129.54" width="0.1524" layer="91"/>
<wire x1="242.182903125" y1="129.54" x2="242.182903125" y2="149.87473125" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U7-T6K8" class="0">
<segment>
<pinref part="U8" gate="A" pin="HVOUT12"/>
<wire x1="236.22" y1="104.14" x2="236.22" y2="119.38" width="0.1524" layer="91"/>
<wire x1="236.22" y1="119.38" x2="237.49" y2="119.38" width="0.1524" layer="91"/>
<wire x1="237.49" y1="119.38" x2="237.49" y2="132.08" width="0.1524" layer="91"/>
<wire x1="237.49" y1="132.08" x2="239.4204" y2="132.08" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="K8"/>
<wire x1="239.4204" y1="132.08" x2="239.4204" y2="153.87675625" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<label x="58.42" y="10.16" size="1.778" layer="95" rot="R90"/>
<wire x1="60.96" y1="17.78" x2="73.66" y2="17.78" width="0.1524" layer="91"/>
<wire x1="73.66" y1="17.78" x2="157.48" y2="17.78" width="0.1524" layer="91"/>
<wire x1="157.48" y1="17.78" x2="170.18" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="VSS"/>
<wire x1="170.18" y1="17.78" x2="220.98" y2="17.78" width="0.1524" layer="91"/>
<wire x1="220.98" y1="17.78" x2="251.46" y2="17.78" width="0.1524" layer="91"/>
<wire x1="157.48" y1="45.72" x2="157.48" y2="17.78" width="0.1524" layer="91"/>
<junction x="157.48" y="17.78"/>
<pinref part="U6" gate="A" pin="VSS"/>
<wire x1="60.96" y1="45.72" x2="60.96" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U8" gate="A" pin="VSS"/>
<wire x1="251.46" y1="17.78" x2="251.46" y2="45.72" width="0.1524" layer="91"/>
<junction x="251.46" y="17.78"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="256.54" y1="20.32" x2="256.54" y2="17.78" width="0.1524" layer="91"/>
<wire x1="256.54" y1="17.78" x2="251.46" y2="17.78" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="170.18" y1="20.32" x2="170.18" y2="17.78" width="0.1524" layer="91"/>
<junction x="170.18" y="17.78"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="73.66" y1="20.32" x2="73.66" y2="17.78" width="0.1524" layer="91"/>
<junction x="73.66" y="17.78"/>
<pinref part="J4" gate="1" pin="1"/>
<wire x1="58.42" y1="10.16" x2="58.42" y2="17.78" width="0.1524" layer="91"/>
<wire x1="58.42" y1="17.78" x2="60.96" y2="17.78" width="0.1524" layer="91"/>
<junction x="60.96" y="17.78"/>
<pinref part="NC4" gate="G$1" pin="1"/>
<wire x1="220.98" y1="15.24" x2="220.98" y2="17.78" width="0.1524" layer="91"/>
<junction x="220.98" y="17.78"/>
</segment>
</net>
<net name="+HV" class="0">
<segment>
<pinref part="J4" gate="1" pin="7"/>
<label x="43.18" y="10.16" size="1.778" layer="95" rot="R90"/>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="287.02" y1="190.5" x2="287.02" y2="193.04" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="287.02" y1="193.04" x2="248.92" y2="193.04" width="0.1524" layer="91"/>
<wire x1="248.92" y1="193.04" x2="210.82" y2="193.04" width="0.1524" layer="91"/>
<wire x1="210.82" y1="193.04" x2="172.72" y2="193.04" width="0.1524" layer="91"/>
<wire x1="172.72" y1="193.04" x2="134.62" y2="193.04" width="0.1524" layer="91"/>
<wire x1="134.62" y1="193.04" x2="96.52" y2="193.04" width="0.1524" layer="91"/>
<wire x1="96.52" y1="193.04" x2="58.42" y2="193.04" width="0.1524" layer="91"/>
<wire x1="58.42" y1="193.04" x2="20.32" y2="193.04" width="0.1524" layer="91"/>
<wire x1="20.32" y1="193.04" x2="20.32" y2="190.5" width="0.1524" layer="91"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="248.92" y1="190.5" x2="248.92" y2="193.04" width="0.1524" layer="91"/>
<junction x="248.92" y="193.04"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="210.82" y1="190.5" x2="210.82" y2="193.04" width="0.1524" layer="91"/>
<junction x="210.82" y="193.04"/>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="172.72" y1="190.5" x2="172.72" y2="193.04" width="0.1524" layer="91"/>
<junction x="172.72" y="193.04"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="134.62" y1="190.5" x2="134.62" y2="193.04" width="0.1524" layer="91"/>
<junction x="134.62" y="193.04"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="96.52" y1="190.5" x2="96.52" y2="193.04" width="0.1524" layer="91"/>
<junction x="96.52" y="193.04"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="58.42" y1="190.5" x2="58.42" y2="193.04" width="0.1524" layer="91"/>
<junction x="58.42" y="193.04"/>
<wire x1="20.32" y1="193.04" x2="0" y2="193.04" width="0.1524" layer="91"/>
<junction x="20.32" y="193.04"/>
<wire x1="0" y1="193.04" x2="0" y2="25.4" width="0.1524" layer="91"/>
<wire x1="0" y1="25.4" x2="43.18" y2="25.4" width="0.1524" layer="91"/>
<wire x1="43.18" y1="25.4" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="!BL!" class="0">
<segment>
<label x="48.26" y="10.16" size="1.778" layer="95" rot="R90"/>
<pinref part="U8" gate="A" pin="!BL"/>
<wire x1="48.26" y1="38.1" x2="71.12" y2="38.1" width="0.1524" layer="91"/>
<wire x1="71.12" y1="38.1" x2="167.64" y2="38.1" width="0.1524" layer="91"/>
<wire x1="167.64" y1="38.1" x2="261.62" y2="38.1" width="0.1524" layer="91"/>
<wire x1="261.62" y1="38.1" x2="261.62" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U6" gate="A" pin="!BL"/>
<wire x1="71.12" y1="45.72" x2="71.12" y2="38.1" width="0.1524" layer="91"/>
<junction x="71.12" y="38.1"/>
<pinref part="U7" gate="A" pin="!BL"/>
<wire x1="167.64" y1="45.72" x2="167.64" y2="38.1" width="0.1524" layer="91"/>
<junction x="167.64" y="38.1"/>
<pinref part="J4" gate="1" pin="5"/>
<wire x1="48.26" y1="10.16" x2="48.26" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIN" class="0">
<segment>
<label x="50.8" y="10.16" size="1.778" layer="95" rot="R90"/>
<pinref part="U6" gate="A" pin="DATAIN"/>
<wire x1="68.58" y1="33.02" x2="68.58" y2="45.72" width="0.1524" layer="91"/>
<pinref part="J4" gate="1" pin="4"/>
<wire x1="50.8" y1="10.16" x2="50.8" y2="33.02" width="0.1524" layer="91"/>
<wire x1="50.8" y1="33.02" x2="68.58" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="!LE!" class="0">
<segment>
<pinref part="U8" gate="A" pin="!LE"/>
<wire x1="53.34" y1="35.56" x2="66.04" y2="35.56" width="0.1524" layer="91"/>
<wire x1="66.04" y1="35.56" x2="162.56" y2="35.56" width="0.1524" layer="91"/>
<wire x1="162.56" y1="35.56" x2="256.54" y2="35.56" width="0.1524" layer="91"/>
<wire x1="256.54" y1="35.56" x2="256.54" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U6" gate="A" pin="!LE"/>
<wire x1="66.04" y1="45.72" x2="66.04" y2="35.56" width="0.1524" layer="91"/>
<junction x="66.04" y="35.56"/>
<pinref part="U7" gate="A" pin="!LE"/>
<wire x1="162.56" y1="45.72" x2="162.56" y2="35.56" width="0.1524" layer="91"/>
<junction x="162.56" y="35.56"/>
<pinref part="J4" gate="1" pin="3"/>
<wire x1="53.34" y1="10.16" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<label x="53.34" y="10.16" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<label x="55.88" y="10.16" size="1.778" layer="95" rot="R90"/>
<pinref part="U6" gate="A" pin="!POL"/>
<wire x1="55.88" y1="45.72" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U8" gate="A" pin="VDD"/>
<wire x1="55.88" y1="43.18" x2="63.5" y2="43.18" width="0.1524" layer="91"/>
<wire x1="63.5" y1="43.18" x2="73.66" y2="43.18" width="0.1524" layer="91"/>
<wire x1="73.66" y1="43.18" x2="152.4" y2="43.18" width="0.1524" layer="91"/>
<wire x1="152.4" y1="43.18" x2="160.02" y2="43.18" width="0.1524" layer="91"/>
<wire x1="160.02" y1="43.18" x2="170.18" y2="43.18" width="0.1524" layer="91"/>
<wire x1="170.18" y1="43.18" x2="218.44" y2="43.18" width="0.1524" layer="91"/>
<wire x1="218.44" y1="43.18" x2="246.38" y2="43.18" width="0.1524" layer="91"/>
<wire x1="246.38" y1="43.18" x2="254" y2="43.18" width="0.1524" layer="91"/>
<wire x1="254" y1="43.18" x2="254" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U8" gate="A" pin="!POL"/>
<wire x1="246.38" y1="45.72" x2="246.38" y2="43.18" width="0.1524" layer="91"/>
<junction x="246.38" y="43.18"/>
<pinref part="U7" gate="A" pin="!POL"/>
<wire x1="152.4" y1="45.72" x2="152.4" y2="43.18" width="0.1524" layer="91"/>
<junction x="152.4" y="43.18"/>
<pinref part="U7" gate="A" pin="VDD"/>
<wire x1="160.02" y1="45.72" x2="160.02" y2="43.18" width="0.1524" layer="91"/>
<junction x="160.02" y="43.18"/>
<pinref part="U6" gate="A" pin="VDD"/>
<wire x1="63.5" y1="45.72" x2="63.5" y2="43.18" width="0.1524" layer="91"/>
<junction x="63.5" y="43.18"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="170.18" y1="27.94" x2="170.18" y2="43.18" width="0.1524" layer="91"/>
<junction x="170.18" y="43.18"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="73.66" y1="27.94" x2="73.66" y2="43.18" width="0.1524" layer="91"/>
<junction x="73.66" y="43.18"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="256.54" y1="27.94" x2="256.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="256.54" y1="30.48" x2="254" y2="30.48" width="0.1524" layer="91"/>
<wire x1="254" y1="30.48" x2="254" y2="43.18" width="0.1524" layer="91"/>
<junction x="254" y="43.18"/>
<pinref part="J4" gate="1" pin="2"/>
<wire x1="55.88" y1="10.16" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
<junction x="55.88" y="43.18"/>
<pinref part="NC4" gate="G$1" pin="2"/>
<wire x1="218.44" y1="15.24" x2="218.44" y2="43.18" width="0.1524" layer="91"/>
<junction x="218.44" y="43.18"/>
</segment>
</net>
<net name="U5-U6" class="0">
<segment>
<pinref part="U6" gate="A" pin="DATAOUT"/>
<wire x1="45.72" y1="45.72" x2="45.72" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="DATAIN"/>
<wire x1="45.72" y1="30.48" x2="165.1" y2="30.48" width="0.1524" layer="91"/>
<wire x1="165.1" y1="30.48" x2="165.1" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6-U7" class="0">
<segment>
<pinref part="U7" gate="A" pin="DATAOUT"/>
<wire x1="142.24" y1="45.72" x2="142.24" y2="33.02" width="0.1524" layer="91"/>
<wire x1="142.24" y1="33.02" x2="259.08" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U8" gate="A" pin="DATAIN"/>
<wire x1="259.08" y1="33.02" x2="259.08" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<pinref part="J4" gate="1" pin="6"/>
<wire x1="45.72" y1="10.16" x2="45.72" y2="27.94" width="0.1524" layer="91"/>
<wire x1="45.72" y1="27.94" x2="43.18" y2="27.94" width="0.1524" layer="91"/>
<wire x1="43.18" y1="27.94" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
<label x="45.72" y="10.16" size="1.778" layer="95" rot="R90"/>
<wire x1="43.18" y1="40.64" x2="58.42" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U8" gate="A" pin="CLK"/>
<wire x1="58.42" y1="40.64" x2="154.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="154.94" y1="40.64" x2="248.92" y2="40.64" width="0.1524" layer="91"/>
<wire x1="248.92" y1="40.64" x2="248.92" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="CLK"/>
<wire x1="154.94" y1="45.72" x2="154.94" y2="40.64" width="0.1524" layer="91"/>
<junction x="154.94" y="40.64"/>
<pinref part="U6" gate="A" pin="CLK"/>
<wire x1="58.42" y1="45.72" x2="58.42" y2="40.64" width="0.1524" layer="91"/>
<junction x="58.42" y="40.64"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="J4" gate="1" pin="8"/>
<wire x1="40.64" y1="10.16" x2="40.64" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="101,1,73.66,195.58,NC5,1,,,,"/>
<approved hash="101,1,76.2,195.58,NC5,2,,,,"/>
<approved hash="101,1,226.06,195.58,NC6,1,,,,"/>
<approved hash="101,1,228.6,195.58,NC6,2,,,,"/>
<approved hash="104,1,60.96,45.72,U6,VSS,GND,,,"/>
<approved hash="104,1,63.5,45.72,U6,VDD,+5V,,,"/>
<approved hash="104,1,157.48,45.72,U7,VSS,GND,,,"/>
<approved hash="104,1,160.02,45.72,U7,VDD,+5V,,,"/>
<approved hash="104,1,251.46,45.72,U8,VSS,GND,,,"/>
<approved hash="104,1,254,45.72,U8,VDD,+5V,,,"/>
<approved hash="106,1,40.64,10.16,N$19,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
