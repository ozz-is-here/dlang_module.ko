extern(C):

int emergency_restart();

int printk_wa(char* s);

int call_d()
{
    printk_wa(cast(char*)"Hello, World!\n");
    
    //emergency_restart(); // This is just an example
    return -1;
}

