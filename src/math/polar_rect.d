module math.polar_rect;

import std.traits : isNumeric;
import std.math;

//---X
ReturnT	getX(ReturnT, RT, TT	)	(RT r, TT t	)	if (isNumeric!ReturnT && isNumeric!RT && isNumeric!TT	)	{	return r*cos(t)	;}
ReturnT	getX(ReturnT, ValueT	)	(ValueT r, ValueT t	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return r*cos(t)	;}
T	getX(T	)	(T r, T t	)	if (isNumeric!T	)	{	return r*cos(t)	;}
ReturnT	getX(ReturnT, ValueT	)	(ValueT[2] polar	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return polar[0]*cos(polar[1])	;}
T	getX(T	)	(T[2] polar	)	if (isNumeric!T	)	{	return polar[0]*cos(polar[1])	;}
//---Y									
ReturnT	getY(ReturnT, RT, TT	)	(RT r, TT t	)	if (isNumeric!ReturnT && isNumeric!RT && isNumeric!TT	)	{	return r*sin(t)	;}
ReturnT	getY(ReturnT, ValueT	)	(ValueT r, ValueT t	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return r*sin(t)	;}
T	getY(T	)	(T r, T t	)	if (isNumeric!T	)	{	return r*sin(t)	;}
ReturnT	getY(ReturnT, ValueT	)	(ValueT[2] polar	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return polar[0]*sin(polar[1])	;}
T	getY(T	)	(T[2] polar	)	if (isNumeric!T	)	{	return polar[0]*sin(polar[1])	;}
//---R									
ReturnT	getR(ReturnT, XT, YT	)	(XT x, YT y	)	if (isNumeric!ReturnT && isNumeric!XT && isNumeric!YT	)	{	return sqrt(pow(x,2)+pow(y,2))	;}
ReturnT	getR(ReturnT, ValueT	)	(ValueT x, ValueT y	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return sqrt(pow(x,2)+pow(y,2))	;}
T	getR(T	)	(T x, T y	)	if (isNumeric!T	)	{	return sqrt(pow(x,2)+pow(y,2))	;}
ReturnT	getR(ReturnT, ValueT	)	(ValueT[2] rect	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return sqrt(pow(rect[0],2)+pow(rect[1],2))	;}
T	getR(T	)	(T[2] rect	)	if (isNumeric!T	)	{	return sqrt(pow(rect[0],2)+pow(rect[1],2))	;}
//---T									
ReturnT	getTheda(ReturnT, XT, YT	)	(XT x, YT y	)	if (isNumeric!ReturnT && isNumeric!XT && isNumeric!YT	)	{	return atan(y/x)	;}
ReturnT	getTheda(ReturnT, ValueT	)	(ValueT x, ValueT y	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return atan(y/x)	;}
T	getTheda(T	)	(T x, T y	)	if (isNumeric!T	)	{	return atan(y/x)	;}
ReturnT	getTheda(ReturnT, ValueT	)	(ValueT[2] rect	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return atan(rect[1]/rect[0])	;}
T	getTheda(T	)	(T[2] rect	)	if (isNumeric!T	)	{	return atan(rect[1]/rect[0])	;}
alias getT = getTheda;

//---Rect
ReturnT[2]	getRect(ReturnT, RT, TT	)	(RT r, TT t	)	if (isNumeric!ReturnT && isNumeric!RT && isNumeric!TT	)	{	return [getX(r,t)	,getY(r,t)	]	;}
ReturnT[2]	getRect(ReturnT, ValueT	)	(ValueT r, ValueT t	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return [getX(r,t)	,getY(r,t)	]	;}
T[2]	getRect(T	)	(T r, T t	)	if (isNumeric!T	)	{	return [getX(r,t)	,getY(r,t)	]	;}
ReturnT[2]	getRect(ReturnT, ValueT	)	(ValueT[2] polar	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return [getX(polar)	,getY(polar)	]	;}
T[2]	getRect(T	)	(T[2] polar	)	if (isNumeric!T	)	{	return [getX(polar)	,getY(polar)	]	;}
//---Polar											
ReturnT[2]	getPolar(ReturnT, XT, YT	)	(XT x, YT y	)	if (isNumeric!ReturnT && isNumeric!XT && isNumeric!YT	)	{	return [getR(x,y)	,getT(x,y)	]	;}
ReturnT[2]	getPolar(ReturnT, ValueT	)	(ValueT x, ValueT y	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return [getR(x,y)	,getT(x,y)	]	;}
T[2]	getPolar(T	)	(T x, T y	)	if (isNumeric!T	)	{	return [getR(x,y)	,getT(x,y)	]	;}
ReturnT[2]	getPolar(ReturnT, ValueT	)	(ValueT[2] rect	)	if (isNumeric!ReturnT && isNumeric!ValueT	)	{	return [getR(rect)	,getT(rect)	]	;}
T[2]	getPolar(T	)	(T[2] rect	)	if (isNumeric!T	)	{	return [getR(rect)	,getT(rect)	]	;}