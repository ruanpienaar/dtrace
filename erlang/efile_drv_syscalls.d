syscall:::entry
/execname == " efile_drv"/
{
   /** trace(execname); **/
   printf("%s %d %d %d", execname, arg0, arg1, arg2)
}