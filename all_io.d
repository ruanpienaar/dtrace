#!/usr/sbin/dtrace -qs
io:::
{
   trace(execname);
}