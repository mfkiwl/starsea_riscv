#define MAX_CMD_NAME_LENGTH 20
#define MAX_CMDS_COUNT 10

typedef void (*handler)(void);

typedef struct cmd
{
  char cmd_name[MAX_CMD_NAME_LENGTH+1];
  handler cmd_operate;
} CMD;

typedef struct cmds
{
  CMD cmds[MAX_CMDS_COUNT];
  int num;
} CMDS;

void register_cmds(CMD reg_cmds[], int num);
void match_cmd(char *str);
