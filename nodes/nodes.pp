node default {
	include authkeys
}

node base {
	include general	
}

node 'ip-10-117-93-37.ec2.internal' inherits base {
}

node 'ip-10-117-65-120.ec2.internal' inherits base {
	include webserver
}

node 'ip-10-112-54-118.ec2.internal' {
	class { 'webserver':
		x => "parameterized classes! specific to this node",
	}
}
