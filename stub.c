#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>

MODULE_LICENSE("MIT");
MODULE_AUTHOR("ozz-is-here");
MODULE_DESCRIPTION("D Test Module");

int call_d(void);

int printk_wa(char* s)
{
    printk(KERN_INFO "%s\n", s);
    return 0;
}

static int dummy_init(void)
{
    int r = call_d();
    return 0;
}

static void dummy_exit(void)
{
    printk(KERN_INFO "Bye, World!\n" );
}

module_init(dummy_init);
module_exit(dummy_exit);