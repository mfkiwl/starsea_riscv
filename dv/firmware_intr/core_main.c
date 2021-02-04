#include "coremark.h"
#include "cmd.h"
#include "led.h"

int alg_test()
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
   int t;
   t= b*c*2;
   ee_printf("b*c=  %d\n",t);
   return t;
}
int tt()
{
 int a;
 a = alg_test();	
}
MAIN_RETURN_TYPE
main(void)
{
   ee_printf("STARSEA RISCV CORE! HAPPY BE YOURSELF\n");

    ee_printf("test\n");
	int c;
	c = tt();
	int *adr= (int *)0x80000008;
	*adr = c;
    led_init();
    while(1);

}


int *uart_rx_intr_flag = (int*)0x80000120;
int *uart_rx_intr_flag_clr = (int*)0x80000124;
int *uart_rx_data = (int*)0x80000128;
char uart_rx_buffer[16];
char *cmd_str=uart_rx_buffer;
int uart_rx_len=0;
void isr()
{
	asm("csrr t0,mstatus");//disable interrupt
	asm("and t0, t0, 0xfffffff7");
    asm("csrw mstatus, t0");
    if(*uart_rx_intr_flag == 1)
    {
      if(*uart_rx_data != 0xa)
      {
        uart_rx_buffer[uart_rx_len] = *uart_rx_data; 
        uart_rx_len++;
		if(uart_rx_len>15){
			ee_printf("command len is too large,must <15 and has a ENTER ending \n");
			uart_rx_len=0;
		}
      }
      else
      {
        uart_rx_buffer[uart_rx_len] = '\0';

  
        ee_printf("receiverd a uart_rx interrupt\n");
        match_cmd(cmd_str);

        for(int i=0;i<uart_rx_len;i++)
          ee_printf("%c",*(cmd_str+i));//uart_rx_buffer[i]);
        ee_printf("\n");
        uart_rx_len=0;
      }
      *uart_rx_intr_flag_clr = 0;
    }
    else
      ee_printf("receiverd a non uart_rx interrupt\n");
  
  	asm("csrr t0,mstatus");//enable interrupt
	asm("or t0, t0, 0xffffffff");
    asm("csrw mstatus, t0");
    
}

void isr_exception()
{

     ee_printf("a misalign exception happened\n");
    
}
