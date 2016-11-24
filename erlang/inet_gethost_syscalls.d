syscall:::entry
/execname == "inet_gethost"/
{
   /** trace(execname); **/
   printf("%s %d %d %d", execname, arg0, arg1, arg2)
}