class authkeys {

	ssh_authorized_key { "user1":
		ensure => "present",
		key => ""
		user => "root",
		type => "ssh-rsa"
	}

	ssh_authorized_key { "user2":
		ensure => "present",
		key => ""
		user => "root",
		type => "ssh-rsa"
	}
}
