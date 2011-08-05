node default {
	include authkeys
}

node base {
	include general	
}

node 'node1.internal' inherits base {
}

node 'node2.internal' inherits base {
	include webserver
}

node 'node3.internal' {
	class { 'webserver':
		x => "parameterized classes! specific to this node",
	}
}
