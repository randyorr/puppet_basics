class general {
	include "authkeys"
	include "cronjobs"

        file { "serverinfo":
                path => '/tmp/serverinfo',
                ensure => present,
                owner => root, group => root, mode => 644,
                content => template("/etc/puppet/manifests/templates/serverinfo.erb")
        }
}
