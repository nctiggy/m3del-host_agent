class host_agnet::service inherits host_agent {

	service { "hostagent":
		ensure     => running,
		enable     => true,
		hasrestart => false,
		hasstatus  => true,
		# pattern    => 'hostagent',
	}

}