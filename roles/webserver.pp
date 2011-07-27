class webserver($x = "this is the default") {
	package { 'httpd.x86_64':
		ensure => installed,
	}
	
	file { '/var/www/html/index.html':
		owner => 'root',
		group => 'root',
		mode => '0644',
		content => template("/etc/puppet/manifests/templates/index.erb")
	}
		
	service { 'httpd':
		ensure => running,
		enable => true,
		hasstatus => true,
		hasrestart => true,
		require => Package["httpd.x86_64"]
	}
}
