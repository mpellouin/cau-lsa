#include <linux/syscalls.h>

SYSCALL_DEFINE0(mycall)
{
	printk("System call example!\n");
	return 0;
}
