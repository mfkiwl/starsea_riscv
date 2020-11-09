#include"cmd.h"
#include<stddef.h>
static CMDS commands ={NULL,0};
void match_cmd(char *str)
{
  int i;
  if(strlen(str) > MAX_CMD_NAME_LENGTH)
  {
     return;
  }
  for(i=0;i<commands.num;i++)
  {
     if(strcmp(commands.cmds[i].cmd_name,str) == 0)
     {
       commands.cmds[i].cmd_operate();
     }
  }
}

void register_cmds(CMD reg_cmds[], int length)
{
  int i;
  if(length > MAX_CMDS_COUNT)
  {
    return;
  }
  for(i=0;i<length;i++)
  {
    if(commands.num<MAX_CMDS_COUNT)
    {
      strcpy(commands.cmds[commands.num].cmd_name,reg_cmds[i].cmd_name);
      commands.cmds[commands.num].cmd_operate = reg_cmds[i].cmd_operate;
      commands.num++;
    }
  }
}
