//Maya ASCII 4.5 scene
//Name: Meteor.ma
//Last modified: Thu, Jul 25, 2002 01:56:04 PM
requires maya "4.5";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "/usr/alias_cuts/maya_main_irix_r+d/bin/maya.bin";
fileInfo "product" "Maya Unlimited 4.5";
fileInfo "version" "4.5CG";
fileInfo "cutIdentifier" "200207240603";
fileInfo "osv" "IRIX64 6.5 04151556 IP30";
createNode transform -n "fuelBurn";
	setAttr ".t" -type "double3" 0 9.8516245002628757 -0.038072587821532444 ;
createNode fluidShape -n "fuelBurnShape" -p "fuelBurn";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr ".rt" 1;
	setAttr ".vf" 0;
	setAttr ".iss" yes;
	setAttr ".rw" 40;
	setAttr ".rh" 40;
	setAttr ".rd" 20;
	setAttr ".dw" 20;
	setAttr ".dh" 20;
	setAttr ".dd" 10;
	setAttr -s 4 ".fce";
	setAttr -s 4 ".eml";
	setAttr ".sli" 1;
	setAttr ".vdl" 0.097120000000000012;
	setAttr ".vds" 4;
	setAttr ".opg" 0.67962002754211426;
	setAttr ".ots" 1;
	setAttr ".bndx" 0;
	setAttr ".bndy" 0;
	setAttr ".bndz" 0;
	setAttr ".ddf" 0.015;
	setAttr ".dsb" 0.72820001840591431;
	setAttr ".vmt" 0;
	setAttr ".vdp" 0.019419999793171883;
	setAttr ".tst" 0.46601998805999756;
	setAttr ".tfr" 0.81551998853683472;
	setAttr ".tbs" 0.058279998600482941;
	setAttr ".fmet" 2;
	setAttr ".fesc" 0.64079999923706055;
	setAttr ".resp" 0.0080000003799796104;
	setAttr ".fuit" -0.10000000149011612;
	setAttr ".mxrt" 0;
	setAttr ".ss" yes;
	setAttr ".rin" 3;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0.8928571343421936;
	setAttr ".cl[0].clc" -type "float3" 0.49000001 0.44424185 0.38416001 ;
	setAttr ".cl[0].cli" 3;
	setAttr ".cl[1].clp" 0;
	setAttr ".cl[1].clc" -type "float3" 0.049163997 0.084608153 0.102 ;
	setAttr ".cl[1].cli" 3;
	setAttr ".cib" 0.10868000239133835;
	setAttr -s 4 ".opa";
	setAttr ".opa[2].opap" 1;
	setAttr ".opa[2].opafv" 0.77999997138977051;
	setAttr ".opa[2].opai" 1;
	setAttr ".opa[4:5]" 0.4285714328289032 0.23999999463558197 3 0.42142856121063232 
		0.045000001788139343 3;
	setAttr ".opa[7].opap" 0.34285715222358704;
	setAttr ".opa[7].opafv" 0;
	setAttr ".opa[7].opai" 3;
	setAttr ".oib" 0.80431997776031494;
	setAttr ".t" -type "float3" 0.16470589 0.16470589 0.16470589 ;
	setAttr ".shp" 0.16504000127315521;
	setAttr -s 5 ".i";
	setAttr ".i[0].ip" 0.82142859697341919;
	setAttr ".i[0].ic" -type "float3" 0.4199 1.3 0.42576733 ;
	setAttr ".i[0].ii" 1;
	setAttr ".i[1].ip" 0.014285714365541935;
	setAttr ".i[1].ic" -type "float3" 0.012374999 0.029318251 0.045000002 ;
	setAttr ".i[1].ii" 1;
	setAttr ".i[2].ip" 0.48571428656578064;
	setAttr ".i[2].ic" -type "float3" 0.75 0.23612496 0 ;
	setAttr ".i[2].ii" 1;
	setAttr ".i[3].ip" 1;
	setAttr ".i[3].ic" -type "float3" 0.32200003 0.3552804 2 ;
	setAttr ".i[3].ii" 1;
	setAttr ".i[4].ip" 0.64999997615814209;
	setAttr ".i[4].ic" -type "float3" 1 0.5628587 0.0080000162 ;
	setAttr ".i[4].ii" 1;
	setAttr ".ili" 7;
	setAttr ".iib" 0.60868000984191895;
	setAttr ".gi" 0.30000001192092896;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
	setAttr ".edr" 0.29129999876022339;
	setAttr ".rl" no;
	setAttr ".dl" -type "float3" 0.60000002 0.60000002 -0.2 ;
	setAttr ".tty" 4;
	setAttr ".ctx" yes;
	setAttr ".itx" yes;
	setAttr ".itxg" 0.93203997611999512;
	setAttr ".otx" yes;
	setAttr ".a" 0.74757999181747437;
	setAttr ".ra" 0.62136000394821167;
	setAttr ".dm" 3;
	setAttr ".fq" 2.5;
	setAttr ".in" yes;
	setAttr ".cvel" no;
	setAttr ".ctmp" no;
	setAttr ".ccol" no;
	setAttr ".catc" no;
	setAttr ".nts" -type "string" (
		"This simulates a hot cometlike object falling through the air leaving a trail of turbulence smoke. A fuel grid was used for the incandescence color. The large ball in the lead emits fuel which then reacts away a bit each timestep. Ignition temperature is below zero so that the reaction will always happen(the default temperature on the grid is zero ). Another perhaps simpler way of doing the same thing might have been to simply use the temperature grid with dissipation.\n"
		+ "Multiple emitters were used with anim curves controlling the offset so that the emission along the path would be more gradual, rather than pumping on in a sudden fashion.\n"
		+ "The smoke is self shadowed and animated with a little turbulence and diffusion(note that a velocity grid is not needed for turbulence to be used, which allows the simulation to run a bit faster). Also an animated texture creates a billowing effect.\n"
		+ "If this file was imported or loaded through visor then the shaderGlow will also need to be set. To do this cut and paste the following into the command prompt:\n"
		+ "setAttr \"shaderGlow1.autoExposure\" 0;\n"
		+ "setAttr \"shaderGlow1.threshold\" 0.125;\n"
		+ "setAttr \"shaderGlow1.glowColor\" -type double3 0.760784 1 0.996078 ;\n"
		+ "setAttr \"shaderGlow1.glowIntensity\" 0.06;\n"
		+ "setAttr \"shaderGlow1.glowSpread\" 0.08;\n"
		+ "setAttr \"shaderGlow1.glowEccentricity\" 0.15;\n"
		+ "setAttr \"shaderGlow1.haloColor\" -type double3 1 0.854902 0.858824 ;\n"
		+ "setAttr \"shaderGlow1.haloIntensity\" 0.08;\n"
		+ "setAttr \"shaderGlow1.haloSpread\" 0.38;\n"
		+ "setAttr \"shaderGlow1.haloEccentricity\" 0.1;");
createNode fluidEmitter -n "fluidEmitter1" -p "fuelBurn";
	setAttr ".s" -type "double3" 0.89261130684191159 0.79304235317155225 0.89261130684191159 ;
	setAttr ".emt" 4;
	setAttr -k off ".rat";
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr -k off ".dx";
	setAttr -k off ".dy";
	setAttr -k off ".dz";
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr -k off ".tspd";
	setAttr -k off ".nspd";
	setAttr ".vol" 1;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".alx";
	setAttr -k off ".arx";
	setAttr -k off ".rnd";
	setAttr -k off ".drs";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".fdo" 0;
	setAttr ".fde" 0.06796;
createNode fluidEmitter -n "fuelEmitter" -p "fluidEmitter1";
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".emt" 4;
	setAttr -k off ".rat";
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr -k off ".dx";
	setAttr -k off ".dy";
	setAttr -k off ".dz";
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr -k off ".tspd";
	setAttr -k off ".nspd";
	setAttr ".vol" 1;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".alx";
	setAttr -k off ".arx";
	setAttr -k off ".rnd";
	setAttr -k off ".drs";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".fdo" 0;
	setAttr ".fde" 0;
	setAttr ".ffe" 1;
createNode fluidEmitter -n "fluidEmitter2" -p "fuelBurn";
	setAttr ".s" -type "double3" 1.5 1.5 1.5 ;
	setAttr ".emt" 4;
	setAttr -k off ".rat";
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr -k off ".dx";
	setAttr -k off ".dy";
	setAttr -k off ".dz";
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr -k off ".tspd";
	setAttr -k off ".nspd";
	setAttr ".vol" 1;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".alx";
	setAttr -k off ".arx";
	setAttr -k off ".rnd";
	setAttr -k off ".drs";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".fdo" 2.9126000000000003;
	setAttr ".fde" 0.12622;
createNode fluidEmitter -n "fluidEmitter3" -p "fuelBurn";
	setAttr ".s" -type "double3" 1.5 1.5 1.5 ;
	setAttr ".emt" 4;
	setAttr -k off ".rat";
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr -k off ".dx";
	setAttr -k off ".dy";
	setAttr -k off ".dz";
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr -k off ".tspd";
	setAttr -k off ".nspd";
	setAttr ".vol" 1;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".alx";
	setAttr -k off ".arx";
	setAttr -k off ".rnd";
	setAttr -k off ".drs";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".fdo" 2.9126000000000003;
	setAttr ".fde" 0.15533;
createNode transform -n "MeteorCam";
	setAttr ".t" -type "double3" 6.4183455074473024 23.687514936490363 -12.290311249961686 ;
	setAttr ".r" -type "double3" -43.53835272960157 156.99999999999915 0 ;
createNode camera -n "MeteorCamShape" -p "MeteorCam";
	setAttr -k off ".v";
	setAttr ".coi" 24.634183001962175;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode animCurveTL -n "fluidEmitter1_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -50 14.120918607417488 0 6.7709192524639379 39 
		-3.3347091145335512 89 -0.71803662558150805 173 8.0211193998773052;
createNode animCurveTL -n "fluidEmitter1_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -54 7.0020984337826695 0 7.2926292802676045 39 
		2.9989793285794164 89 -6.3071777928692327 173 -6.3071777928692327;
createNode animCurveTL -n "fluidEmitter1_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -57 -0.096843615494977442 0 0 39 2.9647312930235139 
		89 -0.0064122449285739513 173 0.90729581510087742;
createNode animCurveTL -n "fluidEmitter2_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -30 14.120918607417488 20 6.7709192524639379 59 
		-3.3347091145335512 109 -0.71803662558150805 193 8.0211193998773052;
createNode animCurveTL -n "fluidEmitter2_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -34 7.0020984337826695 20 7.2926292802676045 59 
		2.9989793285794164 109 -6.3071777928692327 193 -6.3071777928692327;
createNode animCurveTL -n "fluidEmitter2_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -37 -0.096843615494977442 20 0 59 2.9647312930235139 
		109 -0.0064122449285739513 193 0.90729581510087742;
createNode animCurveTL -n "fluidEmitter3_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -40 14.120918607417488 10 6.7709192524639379 49 
		-3.3347091145335512 99 -0.71803662558150805 183 8.0211193998773052;
createNode animCurveTL -n "fluidEmitter3_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -44 7.0020984337826695 10 7.2926292802676045 49 
		2.9989793285794164 99 -6.3071777928692327 183 -6.3071777928692327;
createNode animCurveTL -n "fluidEmitter3_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -47 -0.096843615494977442 10 0 49 2.9647312930235139 
		99 -0.0064122449285739513 183 0.90729581510087742;
createNode expression -n "expression1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= time * .1";
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "fluidShape1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode imagePlane -n "imagePlane2";
	setAttr ".t" 1;
	setAttr ".s" -type "double2" 1.4173200000000001 1.4173200000000001 ;
	setAttr ".c" -type "double3" -0.55919433169014532 6.7185049687524341 4.1477424876990661 ;
	setAttr ".w" 10;
	setAttr ".h" 10;
createNode ramp -n "ramp2";
	setAttr -s 5 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 1 0 0 ;
	setAttr ".cel[2].ep" 0.99000000953674316;
	setAttr ".cel[2].ec" -type "float3" 0.14180499 0.24102694 0.359 ;
	setAttr ".cel[4].ep" 0.46500000357627869;
	setAttr ".cel[4].ec" -type "float3" 0.51099998 0.51099998 0.51099998 ;
	setAttr ".cel[6].ep" 0.004999999888241291;
	setAttr ".cel[6].ec" -type "float3" 0.201447 0.243 0.24209967 ;
	setAttr ".cel[7].ep" 0.24500000476837158;
	setAttr ".cel[7].ec" -type "float3" 0.352 0.33418107 0.297088 ;
	setAttr ".nf" 0.29128000140190125;
createNode place2dTexture -n "place2dTexture2";
createNode lightLinker -n "lightLinker1";
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :shaderGlow1;
	setAttr ".gi" 0.059999998658895493;
	setAttr ".gc" -type "float3" 0.76078433 1 0.99607843 ;
	setAttr ".gs" 0.079999998211860657;
	setAttr ".gecc" 0.15000000596046448;
	setAttr ".hi" 0.079999998211860657;
	setAttr ".hc" -type "float3" 1 0.85490197 0.85882354 ;
	setAttr ".hs" 0.37999999523162842;
	setAttr ".th" 0.125;
	setAttr ".ae" no;
select -ne :defaultRenderGlobals;
	setAttr ".sdf" -type "string" "";
	setAttr ".pfm" -type "string" "";
	setAttr ".top" 82;
	setAttr ".left" 20;
	setAttr ".bot" 15;
	setAttr ".rght" 92;
	setAttr ".an" yes;
	setAttr ".fs" 1;
	setAttr ".ef" 250;
	setAttr ".ofc" 1;
	setAttr ".ofe" -type "string" "";
	setAttr ".efe" -type "string" "";
	setAttr ".lse" -type "string" "";
	setAttr ".rse" -type "string" "";
	setAttr ".oft" -type "string" "";
	setAttr ".ifp" -type "string" "";
	setAttr ".npu" 1;
	setAttr -k on ".mbf";
	setAttr ".prm" -type "string" "";
	setAttr ".pom" -type "string" "";
	setAttr ".pfrm" -type "string" "";
	setAttr ".pfom" -type "string" "";
select -ne :defaultResolution;
	setAttr ".w" 256;
	setAttr ".h" 256;
	setAttr ".dar" 1;
connectAttr ":time1.o" "fuelBurnShape.cti";
connectAttr "fuelEmitter.ef" "fuelBurnShape.eml[0].emfr";
connectAttr "fluidEmitter1.ef" "fuelBurnShape.eml[1].emfr";
connectAttr "fluidEmitter2.ef" "fuelBurnShape.eml[2].emfr";
connectAttr "fluidEmitter3.ef" "fuelBurnShape.eml[3].emfr";
connectAttr "fuelEmitter.efc" "fuelBurnShape.fce[5]";
connectAttr "fluidEmitter1.efc" "fuelBurnShape.fce[6]";
connectAttr "fluidEmitter2.efc" "fuelBurnShape.fce[7]";
connectAttr "fluidEmitter3.efc" "fuelBurnShape.fce[8]";
connectAttr "expression1.out[0]" "fuelBurnShape.tti";
connectAttr ":time1.o" "fluidEmitter1.ct";
connectAttr "fuelBurnShape.ifl" "fluidEmitter1.full[1]";
connectAttr "fuelBurnShape.ots" "fluidEmitter1.dt[1]";
connectAttr "fuelBurnShape.inh" "fluidEmitter1.inh[1]";
connectAttr "fuelBurnShape.sti" "fluidEmitter1.stt[1]";
connectAttr "fuelBurnShape.sd[6]" "fluidEmitter1.sd[1]";
connectAttr "fluidEmitter1_translateX.o" "fluidEmitter1.tx";
connectAttr "fluidEmitter1_translateY.o" "fluidEmitter1.ty";
connectAttr "fluidEmitter1_translateZ.o" "fluidEmitter1.tz";
connectAttr ":time1.o" "fuelEmitter.ct";
connectAttr "fuelBurnShape.ifl" "fuelEmitter.full[2]";
connectAttr "fuelBurnShape.ots" "fuelEmitter.dt[2]";
connectAttr "fuelBurnShape.inh" "fuelEmitter.inh[2]";
connectAttr "fuelBurnShape.sti" "fuelEmitter.stt[2]";
connectAttr "fuelBurnShape.sd[5]" "fuelEmitter.sd[2]";
connectAttr ":time1.o" "fluidEmitter2.ct";
connectAttr "fuelBurnShape.ifl" "fluidEmitter2.full[2]";
connectAttr "fuelBurnShape.ots" "fluidEmitter2.dt[2]";
connectAttr "fuelBurnShape.inh" "fluidEmitter2.inh[2]";
connectAttr "fuelBurnShape.sti" "fluidEmitter2.stt[2]";
connectAttr "fuelBurnShape.sd[7]" "fluidEmitter2.sd[2]";
connectAttr "fluidEmitter2_translateX.o" "fluidEmitter2.tx";
connectAttr "fluidEmitter2_translateY.o" "fluidEmitter2.ty";
connectAttr "fluidEmitter2_translateZ.o" "fluidEmitter2.tz";
connectAttr ":time1.o" "fluidEmitter3.ct";
connectAttr "fuelBurnShape.ifl" "fluidEmitter3.full[2]";
connectAttr "fuelBurnShape.ots" "fluidEmitter3.dt[2]";
connectAttr "fuelBurnShape.inh" "fluidEmitter3.inh[2]";
connectAttr "fuelBurnShape.sti" "fluidEmitter3.stt[2]";
connectAttr "fuelBurnShape.sd[8]" "fluidEmitter3.sd[2]";
connectAttr "fluidEmitter3_translateX.o" "fluidEmitter3.tx";
connectAttr "fluidEmitter3_translateY.o" "fluidEmitter3.ty";
connectAttr "fluidEmitter3_translateZ.o" "fluidEmitter3.tz";
connectAttr "imagePlane2.msg" "MeteorCamShape.ip" -na;
connectAttr ":time1.o" "expression1.tim";
connectAttr "fluidShape1SG.msg" "materialInfo1.sg";
connectAttr "fuelBurnShape.ocl" "fluidShape1SG.vs";
connectAttr "fuelBurnShape.iog" "fluidShape1SG.dsm" -na;
connectAttr "ramp2.oc" "imagePlane2.stx";
connectAttr "place2dTexture2.o" "ramp2.uv";
connectAttr "place2dTexture2.ofs" "ramp2.fs";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "fluidShape1SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr "fluidShape1SG.pa" ":renderPartition.st" -na;
connectAttr "fuelBurnShape.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "ramp2.msg" ":defaultTextureList1.tx" -na;
// End of Meteor.ma
