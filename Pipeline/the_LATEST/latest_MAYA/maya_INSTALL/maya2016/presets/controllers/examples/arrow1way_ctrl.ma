//Maya ASCII 2016ff01 scene
//Name: arrow1way_ctrl.ma
//Last modified: Thu, Jun 12, 2014 11:12:00 AM
//Codeset: 1252
requires maya "2016ff01";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "Preview Release 42";
fileInfo "cutIdentifier" "201406040300-918499";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "arrow1way_ctrl";
	rename -uid "63CF2721-48A3-471E-243A-259B76F6CE87";
createNode nurbsCurve -n "arrow1way_ctrlShape" -p "arrow1way_ctrl";
	rename -uid "3596AF01-45C8-E18A-A7DA-C8B2CA6758F6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-1 -0.0020784861950406963 0
		-1 2.9979215138049593 0
		-2 2.9979215138049593 0
		0 4.9979215138049593 0
		2 2.9979215138049593 0
		1 2.9979215138049593 0
		1 -0.0020784861950406963 0
		-1 -0.0020784861950406963 0
		;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".vtn" -type "string" "sRGB gamma";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".din" -type "string" "sRGB";
	setAttr ".otn" -type "string" "sRGB gamma";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :nle1;
	setAttr ".time" 1;
// End of arrow1way_ctrl.ma
