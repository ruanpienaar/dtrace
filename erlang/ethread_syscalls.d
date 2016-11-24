syscall:::entry
/execname == "ethread"/
{
   /** trace(execname); **/
   printf("%s %d %d %d", execname, arg0, arg1, arg2)
}