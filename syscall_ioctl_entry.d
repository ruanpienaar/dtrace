syscall::ioctl:entry
/execname != "dtrace" /
{
  trace(execname);
}