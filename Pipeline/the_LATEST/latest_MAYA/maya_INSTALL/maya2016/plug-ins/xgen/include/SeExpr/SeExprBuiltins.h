/*
 SEEXPR SOFTWARE
 Copyright 2011 Disney Enterprises, Inc. All rights reserved
 
 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:
 
 * Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
 
 * Redistributions in binary form must reproduce the above copyright
 notice, this list of conditions and the following disclaimer in
 the documentation and/or other materials provided with the
 distribution.
 
 * The names "Disney", "Walt Disney Pictures", "Walt Disney Animation
 Studios" or the names of its contributors may NOT be used to
 endorse or promote products derived from this software without
 specific prior written permission from Walt Disney Pictures.
 
 Disclaimer: THIS SOFTWARE IS PROVIDED BY WALT DISNEY PICTURES AND
 CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,
 BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS
 FOR A PARTICULAR PURPOSE, NONINFRINGEMENT AND TITLE ARE DISCLAIMED.
 IN NO EVENT SHALL WALT DISNEY PICTURES, THE COPYRIGHT HOLDER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND BASED ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
*/

#ifndef SeExprBuiltins_h
#define SeExprBuiltins_h

#include "SeExpr/SeExprFunc.h"
#include "SeExpr/SePlatform.h"
#include "XgWinExport.h"

class SeVec3d;

namespace SeExpr
{
    void initPerlin();

    // trig
    inline double deg(double angle) { return angle * (180/M_PI); }
    inline double rad(double angle) { return angle * (M_PI/180); }
    inline double cosd(double x) { return cos(rad(x)); }
    inline double sind(double x) { return sin(rad(x)); }
    inline double tand(double x) { return tan(rad(x)); }
    inline double acosd(double x) { return deg(acos(x)); }
    inline double asind(double x) { return deg(asin(x)); }
    inline double atand(double x) { return deg(atan(x)); }
    inline double atan2d(double y, double x) { return deg(atan2(y,x)); }

    // clamping
    inline double clamp(double x, double lo, double hi) {
	return x < lo ? lo : x > hi ? hi : x;
    }
    inline double round(double x) { return x < 0 ? ceil(x-0.5) : floor(x+0.5); }
    inline double max(double x, double y) { return x > y ? x : y; }
    inline double min(double x, double y) { return x < y ? x : y; }

    // blending / remapping
    inline double invert(double x) { return 1-x; }
    XGEN_SEEXPR_EXPORT double compress(double x, double lo, double hi);
    double expand(double x, double lo, double hi);
    XGEN_SEEXPR_EXPORT double fit(double x, double a1, double b1, double a2, double b2);
    XGEN_SEEXPR_EXPORT double gamma(double x, double g);
    double bias(double x, double b);
    double contrast(double x, double c);
    XGEN_SEEXPR_EXPORT double boxstep(double x, double a);
    XGEN_SEEXPR_EXPORT double linearstep(double x, double a, double b);
    XGEN_SEEXPR_EXPORT double smoothstep(double x, double a, double b);
    XGEN_SEEXPR_EXPORT double gaussstep(double x, double a, double b);
    double remap(double x, double s, double r, double f, int interp);
    double mix(double x, double y, double alpha);
    SeVec3d hsi(int n, const SeVec3d* args);
    SeVec3d midhsi(int n, const SeVec3d* args);
    SeVec3d rgbtohsl(const SeVec3d& rgb);
    SeVec3d hsltorgb(const SeVec3d& hsl);

    // noise
    XGEN_SEEXPR_EXPORT double hash(int n, double* args);
    XGEN_SEEXPR_EXPORT double noise(int n, const SeVec3d* args);
    XGEN_SEEXPR_EXPORT double snoise(const SeVec3d& p);
    SeVec3d cnoise(const SeVec3d& p);
    SeVec3d vnoise(const SeVec3d& p);
    double turbulence(int n, const SeVec3d* args);
    SeVec3d vturbulence(int n, const SeVec3d* args);
    SeVec3d cturbulence(int n, const SeVec3d* args);
    double fbm(int n, const SeVec3d* args);
    SeVec3d vfbm(int n, const SeVec3d* args);
    SeVec3d cfbm(int n, const SeVec3d* args);
    double cellnoise(const SeVec3d& p);
    SeVec3d ccellnoise(const SeVec3d& p);
    XGEN_SEEXPR_EXPORT double pnoise(const SeVec3d& p, const SeVec3d& period);

    // vectors
    double dist(double ax, double ay, double az, double bx, double by, double bz);
    double length(const SeVec3d& v);
    double hypot(double x, double y);
    double dot(const SeVec3d& a, const SeVec3d& b);
    SeVec3d norm(const SeVec3d& a);
    SeVec3d cross(const SeVec3d& a, const SeVec3d& b);
    double angle(const SeVec3d& a, const SeVec3d& b);
    SeVec3d ortho(const SeVec3d& a, const SeVec3d& b);
    SeVec3d up(const SeVec3d& vec, const SeVec3d& upvec);

    // variations
    double cycle(double index, double loRange, double hiRange);
    double pick(int n, double* params);
    double choose(int n, double* params);
    double wchoose(int n, double* params);
    double spline(int n, double* params);

    // add builtins to expression function table
    void defineBuiltins(SeExprFunc::Define define,SeExprFunc::Define3 define3);
}

#endif
