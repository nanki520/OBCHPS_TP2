//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include "cblas.h"
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 reduc_base(f64 *restrict a, u64 n)
{
  double d = 0.0;
  
  for (u64 i = 0; i < n; i++)
    d += a[i];

  return d;
}

f64 reduc_8(f64 *restrict a, u64 n)
{
  double d = 0.0;

  
  for (u64 i = 0; i < n; i+=8){
  d=d+a[i]+a[i+1]+a[i+2]+a[i+3]+a[i+4]+a[i+5]+a[i+6]+a[i+7]; 

  }
  
  return d;
}