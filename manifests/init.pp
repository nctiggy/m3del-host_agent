class host_agent (
	$host_desc			= $host_agent::params::host_desc,
	$host_contactname	= $host_agent::params::host_contactname,
	$host_contactphone	= $host_agent::params::host_contactphone,
	$host_device		= $host_agent::params::host_device,
	$array_name			= $host_agent::params::array_name,
	$user_names			= $host_agent::params::user_names,
	$poll_rate			= $host_agent::params::poll_rate,
	$event_log			= $host_agent::params::event_log,
	$baud_rate			= $host_agent::params::baud_rate,
) inherits host_agent::params {
	
	anchor { 'host_agent::begin': } ->
	class { 'host_agent::install': } ->
	class { 'host_agent::config': 
		notify => Class['host_agent::service'],
	} ->
	class { 'host_agent::service': } ->
	anchor { 'host_agent::end': }
	
}