/* 
 CutrColorByHeight.cpp
 Generated by Cutter from:
     "/Users/malcolm/Documents/maya/projects/RMS_ris/Args/CutrColorByHeight.args"
 at 5.28:20pm 3.11.2015
*/
#include <RixPattern.h> 
#include <RixShadingUtils.h>
#include <RixShading.h>
//#include <RixInterfaces.h>
#include <cstring>
//#include <cstdio>
//#include <sstream>
//#include <cmath>

class CutrColorByHeight : public RixPattern {
public:

    CutrColorByHeight();
    virtual ~CutrColorByHeight() { }
    virtual int Init(RixContext &, char const *pluginpath);
    virtual RixSCParamInfo const *GetParamTable();
    virtual void Finalize(RixContext &) { }
    virtual int ComputeOutputParams(RixShadingContext const *ctx,
                                    RtInt *noutputs, 
                                    OutputSpec **outputs,
                                    RtConstPointer instanceData,
                                    RixSCParamInfo const *ignored);
	private:
		RixMessages *m_msg;
		RixShadeFunctions *m_shd;  // Shading functions in RixInterfaces.h
		RtFloat		m_upperht;
		RtFloat		m_lowerht;
		RtColorRGB	m_upperRGB;
		RtColorRGB	m_lowerRGB;
		RtInt		m_mode;
	};

CutrColorByHeight::CutrColorByHeight():
	m_msg(NULL),
	m_shd(NULL),
	m_upperht(10),
	m_lowerht(0),
	m_upperRGB(0.8,0.2,0.0),
	m_lowerRGB(0.0,0.6,0.0),
	m_mode(1)
	{ }

int CutrColorByHeight::Init(RixContext &ctx, char const *pluginpath) {
    m_msg = (RixMessages*)ctx.GetRixInterface(k_RixMessages);
    m_shd = (RixShadeFunctions*)ctx.GetRixInterface(k_RixShadeFunctions);

    // Uncomment the next three lines if a rib Option will be queried.
    //RixRenderState *rstate = (RixRenderState*)ctx.GetRixInterface(k_RixRenderState);
    //RixRenderState::Type optType;
    //RtInt optNumValues, err;
    // Example of using messaging,
    //    m_msg->Info("%f\n", a_float_value);
    return (!m_msg) ? 1 : 0;
    }

RixSCParamInfo const *CutrColorByHeight::GetParamTable() {
    static RixSCParamInfo s_ptable[] = {
		// Output
		RixSCParamInfo("resultC", k_RixSCColor, k_RixSCOutput),
		// Inputs
		RixSCParamInfo("upperht", k_RixSCFloat),
		RixSCParamInfo("lowerht", k_RixSCFloat),
		RixSCParamInfo("upperRGB", k_RixSCColor),
		RixSCParamInfo("lowerRGB", k_RixSCColor),
		RixSCParamInfo("mode", k_RixSCInteger),
		RixSCParamInfo("attrName", k_RixSCString),
		RixSCParamInfo() // end of table
        };
    return &s_ptable[0];
    }

enum paramIndex {
	k_resultC = 0,
	k_upperht,
	k_lowerht,
	k_upperRGB,
	k_lowerRGB,
	k_mode,
	k_attrName
    };
	
int CutrColorByHeight::ComputeOutputParams(RixShadingContext const *ctx,
								RtInt *noutputs, 
								OutputSpec **outputs,
								RtConstPointer instanceData,
								RixSCParamInfo const *ignored) {

	// Uncomment the next three lines if a rib Attribute will be queried. Note
	// that Rib Options should be queried in the init() method - not here!
	RixRenderState *rstate = (RixRenderState*)ctx->GetRixInterface(k_RixRenderState);
	RixRenderState::Type attrType;
	RtInt attrNumValues, err;

	// OUTPUTS BEGIN____________________________________
	// Allocate memory for the OutputSpec data structure.
	RixShadingContext::Allocator pool(ctx);
	OutputSpec *outSpec = pool.AllocForPattern<OutputSpec>(1);
	*outputs = outSpec;

	// Allocate memory for each output.
	RtColorRGB	*resultC = pool.AllocForPattern<RtColorRGB>(ctx->numPts);

	// Connect the output(s) to the OutputSpec.
	*noutputs = 1;
	outSpec[0].paramId = k_resultC;
	outSpec[0].detail = k_RixSCVarying;
	outSpec[0].value = resultC;

	// INPUTS BEGIN____________________________________
	bool varying = true;
	bool uniform = false;
	// Declare a pointer for each input then obtain their values
	// using EvalParam().
	RtFloat		const *upperht;
	RtFloat		const *lowerht;
	RtColorRGB	const *upperRGB;
	RtColorRGB	const *lowerRGB;
	RtInt		const *modePtr;
	RtConstString	 *attrNamePtr;
	ctx->EvalParam(k_upperht, -1, &upperht, &m_upperht, varying);
	ctx->EvalParam(k_lowerht, -1, &lowerht, &m_lowerht, varying);
	ctx->EvalParam(k_upperRGB, -1, &upperRGB, &m_upperRGB, varying);
	ctx->EvalParam(k_lowerRGB, -1, &lowerRGB, &m_lowerRGB, varying);
	ctx->EvalParam(k_mode, -1, &modePtr, &m_mode, uniform);
	ctx->EvalParam(k_attrName, -1, &attrNamePtr);
	RtInt mode = *modePtr;
	 	
//m_msg->Info("attrNamePtr %s\n", *attrNamePtr);
	RtPoint3 *xform; // an array of points either transformed or not
	RtPoint3 pAttrValue;
 	if(mode == 0) {
		RtPoint3 const  *P;
		ctx->GetBuiltinVar(RixShadingContext::k_P, &P);
		xform = pool.AllocForPattern<RtPoint3>(ctx->numPts);
		memcpy(xform, P, sizeof(RtPoint3) * ctx->numPts);
		ctx->Transform(RixShadingContext::k_AsPoints, NULL, "world", xform, NULL);
		}
	else if(mode == 1) {
		xform = pool.AllocForPattern<RtPoint3>(ctx->numPts);
		for(int i = 0; i < ctx->numPts; i++) {
			xform[i].x = xform[i].y = xform[i].z = 0;
			}
		ctx->Transform(RixShadingContext::k_AsPoints, "object", "world", xform, NULL);
		}
	else
		{
		//  Attribute "user" "point position" [-0.847 1.061 0.578] 
		
		err = rstate->GetAttribute(*attrNamePtr, &pAttrValue, sizeof(RtPoint3),
									&attrType, &attrNumValues);
		if(err != 0 || attrType != RixRenderState::k_Point)
			pAttrValue = RtPoint3(0,0,0); // default value ?
	//	m_msg->Info("pAttrValue %1.3f\n", pAttrValue[1]);
		}	
	RtFloat   blend;
	for(int i = 0; i < ctx->numPts; i++) {
		if(mode == 0 || mode == 1)
			blend = RixSmoothStep(lowerht[i], upperht[i], xform[i].y);
		else
			blend = RixSmoothStep(lowerht[i], upperht[i], pAttrValue[1]);
			
 		resultC[i] = RixMix(lowerRGB[i], upperRGB[i], blend);
		}
	return 0;
	}
RIX_PATTERNCREATE {
	return new CutrColorByHeight();
	}
RIX_PATTERNDESTROY {
	delete((CutrColorByHeight*)pattern);
	}
