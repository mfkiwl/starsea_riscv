#include"cmd.h"
#include"led.h"

static void led_test(void)
{
  int *led= (int *)0x80000130;
  *led = 0xaaaaaaaa;

}
void led_init(void)
{
  CMD led_cmds[] = {
    {"led test", led_test}
  };
  register_cmds(led_cmds,1);
}
