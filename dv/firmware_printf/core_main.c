#include "coremark.h"

MAIN_RETURN_TYPE
main(void)
{
   int *adr= (int *)0x80000000;
   int *adr1= (int *)0x80000004;
   int a;
   a =2;
   int b;
   int c;
   b = *adr;
   c = *adr1;
   *adr = b*c*2+a;

    ee_printf("b*c= %d\n",a);
    ee_printf("test\n");
    while(1);

}
