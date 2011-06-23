node 'ip-10-112-234-183.ec2.internal' {
	file { "/tmp/randy.txt":
			path => "/tmp/randy.txt",
			owner => root, group => root, mode => 440,
			content => "hello, just testing going to a specific node"
	}
}

	
