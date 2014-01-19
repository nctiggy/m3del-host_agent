class host_agent::install inherits host_agent {
	package { '/vagrant/files/HostAgent-Linux-32-x86-en_US-1.3.1.1.0033-1.i386.rpm':
		ensure => installed,
		provider => 'rpm',
		require => File['/tmp/HostAgent-Linux-32-x86-en_US-1.3.1.1.0033-1.i386.rpm']
	}
	
}