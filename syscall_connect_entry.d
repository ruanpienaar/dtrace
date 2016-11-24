#!/usr/sbin/dtrace -qs

syscall::connect:entry
{
        socks = (struct sockaddr*) copyin(arg1, arg2);
        hport = (uint_t) socks->sa_data[0];
        lport = (uint_t) socks->sa_data[1];
        hport <<= 8;
        port = hport + lport;

        printf("%s: %d.%d.%d.%d:%d\n", execname, socks->sa_data[2], socks->sa_data[3], socks->sa_data[4], socks->sa_data[5], port);
}