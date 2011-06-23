file { "/tmp/hi.txt":
	path => '/tmp/hi.txt',
	ensure => present,
	owner => root, group => root, mode => 440,
	content => 'blargh, why do this so much?'
}

ssh_authorized_key { "rorr_sshkey":
	ensure => "present",
	key => "AAAAB3NzaC1yc2EAAAABJQAAAIEAxJKV0k+5ms3hc5HrLd7oMp+vJ7W7wYFHhAzmlKC5IYgliqXCNYz9PizDOVZYzn1AnxW+uFtddpJy4hVDJx6+MDKNN1hcnadI08O6d8hynOUgwz3CzzsrWjW05EdlBMgCmhTN5xtGZddpR8nwfXM6+lQSR4AsGPZEs8BoE8jzyfs=",
	user => "root",
	type => "ssh-rsa"
}

ssh_authorized_key { "pyoung_sshkey":
	ensure => "present",
	key => "AAAAB3NzaC1yc2EAAAABIwAAAgEA2zC0N2JC+LqxZw4QiiR6u97o+5k3+C72ASNw0fQ48jg67WJABfGqj5Z8LGAA7tcWd6GKkC2rYj+O5KLppLpnTZ1W3dUxwxa4IvAUbn92XdDyRAG3ZFo1yywRFJFwD7j0eWokYcGFeXnrwaV/oUy9giouHi7hHNdc4WTolRNIPW7MYVNqAeqMOWhMfy0FiJ3eH/qtIsfRFoRP0KffSA3EaGZHwodsG3z/oBIRlF7WZuE1tY84VVrcRwW3L+lyhavq1hjyTu8X1+9KlymfxQO2Pyc70ZFnza+X8CzU27S7gmEZeRQFdaKjAay2hrxSwtoMnTfklVwb35DLE0fSA3HS3Hz3kTlPdZDNiGNletgSiY74z1yQ5jl6mb07f+jltlcT515Wo/gftxarAnLq9m/0kAZICVfe5+8rSCNi48Y2LuYXjLdoM4/378UTTThGjcITOrjHK5BlzxmU2bDbMXUYrHkJmesXPqaTL1PqLUROGCmehv9dDwINIiENvwmxhwNQHF/zZDm03Y+PDPbaLZ15rXnsGDNDWpGppSfIPvj3WdQKIfWas2NxSOANOBNrXl0v/sGc2kaMgRbd1kZttFxP2QmIUtQprTYeDAwtrDMLy37oLfbqz8sCgV4Zed1A628+YHXrQe9hGeXVu7ploJ4gL5cpoxhsQI5fPwJ4/c2SfXs=",
	user => "root",
	type => "ssh-rsa"
}
