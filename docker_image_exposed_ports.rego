package main

default allow = false

default ssh = false

default telnet = false

default http = false

default snmp = false

default rdp = false

allow {
	not ssh
	not telnet
	not http
	not snmp
	not rdp
}

ssh {
	port = "24/tcp"
	input.Config.ExposedPorts[port]
}

telnet {
	port = "25/tcp"
	input.Config.ExposedPorts[port]
}

http {
	port = "80/tcp"
	input.Config.ExposedPorts[port]
}

snmp {
	port = "161/udp"
	input.Config.ExposedPorts[port]
}

rdp {
	port = "3389/tcp"
	input.Config.ExposedPorts[port]
}
