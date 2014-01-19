package { 'HostAgent-Linux-32-x86-en_US-1.3.1.1.0033-1.i386.rpm':
	ensure => installed,
	provider => 'rpm',
	#install_options => '-vh',
	source => '/vagrant/files/HostAgent-Linux-32-x86-en_US-1.3.1.1.0033-1.i386.rpm',
	require => Package['glibc'],
}

package { 'glibc':
	ensure => installed,
	require => Exec['/usr/bin/yum check-update'],
}

exec { '/usr/bin/yum check-update':
	returns => 100
}