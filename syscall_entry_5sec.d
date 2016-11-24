#!/usr/sbin/dtrace -s
syscall:::entry
{
        self->start = vtimestamp;
}
syscall:::return
/(int)arg0 != -1 && self->start/
{
        this->time = vtimestamp - self->start;
        @Time[probefunc] = sum(this->time);
        @Time["TOTAL:"] = sum(this->time);
        self->start = 0;
}
profile:::tick-5s
{
        trunc (@Time, 20);
        normalize (@Time, 1000000);
        printa(@Time);
        clear(@Time);
        exit (0);
}