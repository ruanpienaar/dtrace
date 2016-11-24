syscall:::entry
/execname == "epmd_port"/
{
   /** trace(execname); **/
   printf("%s %d %d %d", execname, arg0, arg1, arg2)
}