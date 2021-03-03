# @TEST-EXEC: zeek -C -r $TRACES/bitcoin-mining.pcap %INPUT
# @TEST-EXEC: test -f 4.0-out && btest-diff 4.0-out || true
# @TEST-EXEC: test -f out && btest-diff out || true

@load zeek-cryptomining
@load base/misc/version

redef Bitcoin::notice_miner_hosts=ALL_HOSTS;
redef Bitcoin::notice_pool_hosts=ALL_HOSTS;

global output = Version::at_least("4.0.0") ? open("4.0-out") : open("out");

hook Notice::policy(n: Notice::Info)
	{
	print output, "NOTICE", n$id, n$note, n$msg;
	}
