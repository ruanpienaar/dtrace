syscall:::
/execname != "dtrace" && execname != "sshd" && execname != "tmux" /
{
   trace(execname);
}