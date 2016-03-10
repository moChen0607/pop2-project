//Maya ASCII 8.0 scene
//Name: TurbulentFlame.ma
//Last modified: Tue, Jul 04, 2006 04:48:16 PM
requires maya "8.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 8.0";
fileInfo "version" "8.0";
fileInfo "cutIdentifier" "200607060022-678979";
fileInfo "osv" "Linux 2.6.12-1.1398_FC4smp #1 SMP Fri Jul 15 01:05:24 EDT 2005 x86_64";
createNode transform -n "Flame";
	setAttr ".t" -type "double3" 0 -1.3201599505724224 0 ;
	setAttr ".s" -type "double3" 0.54713174789130226 0.54713174789130226 0.54713174789130226 ;
createNode fluidShape -n "FlameShape" -p "Flame";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr ".rt" 1;
	setAttr ".vf" 0;
	setAttr ".iss" yes;
	setAttr ".rw" 30;
	setAttr ".rh" 30;
	setAttr ".rd" 30;
	setAttr ".dw" 10;
	setAttr ".dh" 10;
	setAttr ".dd" 10;
	setAttr ".ots" 2;
	setAttr ".srs" 2;
	setAttr ".bndy" 2;
	setAttr ".dds" 0.3;
	setAttr ".dsb" 9;
	setAttr ".vsw" 10;
	setAttr ".tst" 0.0099999997764825821;
	setAttr ".tmet" 2;
	setAttr ".tmsc" 1.9338400363922119;
	setAttr ".buo" 9;
	setAttr ".fmet" 2;
	setAttr ".fesc" 1.966920018196106;
	setAttr ".resp" 0.96692001819610596;
	setAttr ".qua" 2;
	setAttr ".rin" 3;
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr -s 4 ".opa[1:4]"  0.85699999 0 3 0.13600001 0 3 0.15000001 0.89999998 1 
		0.34285715 0.62 3;
	setAttr ".oib" 0.31527999043464661;
	setAttr ".t" -type "float3" 0.77200001 0.77200001 0.77200001 ;
	setAttr -s 2 ".i";
	setAttr ".i[0].ip" 0.8571428656578064;
	setAttr ".i[0].ic" -type "float3" 0 0 0 ;
	setAttr ".i[0].ii" 1;
	setAttr ".i[2].ip" 0.1428571492433548;
	setAttr ".i[2].ic" -type "float3" 20 7.7750001 3.7 ;
	setAttr ".i[2].ii" 2;
	setAttr ".iib" -0.20000000298023224;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
	setAttr ".dos" 1;
	setAttr ".edr" 0.44629999995231628;
	setAttr ".nts" -type "string" "Example Goal:\r\nRealistic looking fire.\r\n\r\nBasic Construction:\r\nDensity emits from the surface of a NURBS torus.\r\nAll contents methods are defined as Dynamic Grid (except for color,  which uses shading color).\r\nBoth Density and Temperature have high Buoyancy values.\r\nSwirl and Turbulence values provide detailed dynamic motion.\r\nThe shading has a high Transparency value with a sphere Dropoff Shape.\r\nTemperature is the Incandescence Input.\r\nDensity as the Opacity Input defines the shape of the fire.\r\nThe built-in fluid texture is not used. \r\n\r\nFiner Points:\r\nUse a high Shading Quality value and select Smooth for the Render Interpolator for a better render result, although it will take longer to render.\r\nRender using TurbulentFlameCamera.\r\nRender Time: $";
createNode transform -n "nurbsTorus1";
	setAttr ".t" -type "double3" 0 -3.4488210999903508 0 ;
createNode nurbsSurface -n "nurbsTorusShape1" -p "nurbsTorus1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode fluidEmitter -n "fluidEmitter2" -p "nurbsTorus1";
	setAttr ".emt" 2;
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
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".alx";
	setAttr -k off ".arx";
	setAttr -k off ".rnd";
	setAttr -k off ".drs";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".trb" 5.7024;
	setAttr ".fhe" 2;
	setAttr ".ffe" 4;
createNode transform -n "TurbulentFlameCamera";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.009739946955817 0.29294163608143764 6.4399356291694003 ;
	setAttr ".r" -type "double3" -11.138352729603193 17.39999999998961 1.8748547455596348e-12 ;
	setAttr ".rp" -type "double3" -3.6082248300317588e-16 0 6.6613381477509392e-16 ;
	setAttr ".rpt" -type "double3" 1.0384401283090038e-15 1.7620481580727211e-16 -3.7680128448714471e-16 ;
createNode camera -n "TurbulentFlameCameraShape" -p "TurbulentFlameCamera";
	setAttr -k off ".v" no;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 0.00023522896777270616;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode lightLinker -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode geoConnector -n "geoConnector1";
createNode makeNurbTorus -n "makeNurbTorus1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".nsp" 4;
	setAttr ".hr" 0.5;
createNode materialInfo -n "materialInfo2";
createNode shadingEngine -n "useBackground1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode useBackground -n "useBackground1";
	setAttr ".sm" 0;
	setAttr ".fll" 0;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".mio" 0;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "fluidShape1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :lightList1;
select -ne :lambert1;
	setAttr ".miic" -type "float3" 3.1415927 3.1415927 3.1415927 ;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr ":time1.o" "FlameShape.cti";
connectAttr "fluidEmitter2.ef" "FlameShape.eml[0].emfr";
connectAttr "fluidEmitter2.efc" "FlameShape.fce[0]";
connectAttr "makeNurbTorus1.os" "nurbsTorusShape1.cr";
connectAttr ":time1.o" "fluidEmitter2.ct";
connectAttr "geoConnector1.ocd" "fluidEmitter2.ocd";
connectAttr "geoConnector1.ocl" "fluidEmitter2.t";
connectAttr "geoConnector1.pos" "fluidEmitter2.opd";
connectAttr "geoConnector1.vel" "fluidEmitter2.ovd";
connectAttr "geoConnector1.swg" "fluidEmitter2.swge";
connectAttr "FlameShape.ifl" "fluidEmitter2.full[0]";
connectAttr "FlameShape.ots" "fluidEmitter2.dt[0]";
connectAttr "FlameShape.inh" "fluidEmitter2.inh[0]";
connectAttr "FlameShape.sti" "fluidEmitter2.stt[0]";
connectAttr "FlameShape.sd[0]" "fluidEmitter2.sd[0]";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "fluidShape1SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "useBackground1SG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "useBackground1SG.msg" "lightLinker1.slnk[2].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr "fluidShape1SG.msg" "lightLinker1.slnk[3].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":time1.o" "geoConnector1.ct";
connectAttr "nurbsTorusShape1.l" "geoConnector1.lge";
connectAttr "nurbsTorusShape1.wm" "geoConnector1.wm";
connectAttr "nurbsTorusShape1.msg" "geoConnector1.own";
connectAttr "useBackground1SG.msg" "materialInfo2.sg";
connectAttr "useBackground1.msg" "materialInfo2.m";
connectAttr "useBackground1.msg" "materialInfo2.t" -na;
connectAttr "useBackground1.oc" "useBackground1SG.ss";
connectAttr "nurbsTorusShape1.iog" "useBackground1SG.dsm" -na;
connectAttr "fluidShape1SG.msg" "materialInfo1.sg";
connectAttr "FlameShape.ocl" "fluidShape1SG.vs";
connectAttr "FlameShape.iog" "fluidShape1SG.dsm" -na;
connectAttr "fluidShape1SG.pa" ":renderPartition.st" -na;
connectAttr "useBackground1SG.pa" ":renderPartition.st" -na;
connectAttr "FlameShape.msg" ":defaultShaderList1.s" -na;
connectAttr "useBackground1.msg" ":defaultShaderList1.s" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of TurbulentFlame.ma
