
#include "LaborkaConfig.h"
#ifdef USE_TRIGONOMETRY_DEGREE
#include "trygonometria.h"
#else
#include <math.h>
#endif

int main() 
{double result=0;
#ifdef USE_TRIGONOMETRY_DEGREE
result = cos_degree(45.0);
#else
double pi=3.14;
result = cos(pi/4.0);
#endif
}