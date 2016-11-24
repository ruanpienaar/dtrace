tcp:::send
/ args[1]->cs_pid != -1 /
{
 	@out[args[1]->cs_zoneid, args[1]->cs_pid, args[2]->ip_saddr,
            args[4]->tcp_sport, args[2]->ip_daddr, args[4]->tcp_dport] =
            sum(args[2]->ip_plength - args[4]->tcp_offset);
}