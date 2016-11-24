syscall::ioctl: 
/execname != "dtrace"/
{
	@[ustack()] = count();
}

tick-5sec
{
	trunc(@,5);
	printa(@); 
	trunc(@); 
	exit(0);
}