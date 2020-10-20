void main()
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
   while(1);
}
