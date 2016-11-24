vminfo:::
/execname == "beam.smp" && execname != "dtrace" && execname != "sshd" && execname != "tmux" /
{
   trace(execname);
}