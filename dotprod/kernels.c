//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include "cblas.h"
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 dotprod_base(f64 *restrict a, f64 *restrict b, u64 n)
{
  double d = 0.0;
  
  for (u64 i = 0; i < n; i++)
    d += a[i] * b[i];

  return d;
}
f64 dotprod_8(f64 *restrict a, f64 *restrict b, u64 n)
{
  double d = 0.0;
  double s0=0.0;
  double s1=0.0;
  double s2=0.0;
  double s3=0.0;
  double s4=0.0;
  double s5=0.0;
  double s6=0.0;
  double s7=0.0;
  for (u64 i = 0; i < n; i+=8){
    s0+=a[i] * b[i];
    s1+=a[i+1] * b[i+1];
    s2+=a[i+2] * b[i+2];
    s3+=a[i+3] * b[i+3];
    s4+=a[i+4] * b[i+4];
    s5+=a[i+5] * b[i+5];
    s6+=a[i+6] * b[i+6];
    s7+=a[i+7] * b[i+7];
   
  } 
  d=d+s0+s1+s2+s3+s4+s5+s6+s7;
  return d;
  }
   

  




