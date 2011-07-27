class cronjobs {
	cron { "psaux":
                command => "sh /tmp/hi.sh",
                user => root,
                minute => 20
        }

	file { "/tmp/hi.sh":
		path => '/tmp/hi.sh',
		ensure => present,
		owner => root, group => root, mode => 775,
		content => 'ps aux > /tmp/out.txt',
		require => Cron["psaux"]
	}

}
