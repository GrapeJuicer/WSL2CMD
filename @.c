#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUF 2048

int catlen(char *str1, char *str2);

int main(int argc, char *argv[])
{
  int i;
  char buf[BUF] = "cmd.exe /C";

  for (i = 1; i < argc; i++) {
    if (strchr(argv[i], ' ') != NULL) {
      if (catlen(buf, argv[i]) + 2 > BUF) {
	printf("Error: args is too many or long.\n");
	exit(1);
      }
      sprintf(buf, "%s \"%s\"", buf, argv[i]);
    }
    else {
      if (catlen(buf, argv[i]) > BUF) {
	printf("Error: args is too many or long.\n");
	exit(1);
      }
      sprintf(buf, "%s %s", buf, argv[i]);
    }
  }

  system(buf);

  return 0;
}


int catlen(char *str1, char *str2)
{
  return strlen(str1) + strlen(str2) + 2; // str1 + space + str2 + nullchr
}
