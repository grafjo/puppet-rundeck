# == Class rundeck::service
#
# This class is meant to be called from rundeck
# It ensure the service is running
#
class rundeck::service(
  $service_name = $rundeck::params::service_name
) inherits rundeck::params {

  service { $service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
