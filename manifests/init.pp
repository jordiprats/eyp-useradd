# == Class: useradd
#
# === useradd documentation
#
class useradd(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits useradd::params{

  class { '::useradd::install': } ->
  class { '::useradd::config': } ~>
  class { '::useradd::service': } ->
  Class['::useradd']

}
