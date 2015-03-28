
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define KB (1024)
#define MB (1024 * KB)
#define GB (1024 * MB)

int main(int argc, char *argv[])
{

 char *p;

 printf("Allocate all available memory then:\n");
 printf(" - if cgroup memory.oom_control=0 kernel will kill it\n");
 printf(" - if cgroup memory.oom_control=1 kernel will pause it\n");

int imb;

 while ((p = (char *)malloc(MB))) {
   imb++;
   printf(" - Allocate %i MB \n",imb);
   memset(p, 0, MB);
   sleep(1);
 }

 printf(" --- \n");
 sleep(5);


 return 0;
}
