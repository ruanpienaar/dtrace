syscall::ioctl: 
{ 
	@[execname] = count();
}

profile:::tick-5s
{
	trunc(@,20);
	printa(@); 
	trunc(@); 
	exit(0);
}