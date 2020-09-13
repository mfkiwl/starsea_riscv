void main()
{
   int *adr= (int *)0x80000000;
   int a;
   a =2;
   int b;
   b = *adr;
   *adr = b+a;
   while(1);
}
