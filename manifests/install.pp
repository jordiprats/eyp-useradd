# == Class: useradd
#
# === useradd::install documentation
#
class useradd::install inherits useradd {

  if($useradd::manage_package)
  {
    # package here, for example: 
    #package { $useradd::params::package_name:
    #  ensure => $useradd::package_ensure,
    #}
  }

}
