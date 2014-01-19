class host_agnet::service inherits host_agent {

	service { "hostagent":
		ensure     => running,
		enable     => true,
		hasrestart => true,
		hasstatus  => true,
		# pattern    => 'hostagent',
	}

}