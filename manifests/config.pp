# == Class: useradd
#
# === useradd::config documentation
#
class useradd::config inherits useradd {

  file { '/etc/default/useradd':
    ensure  => present,
    group   => 'root',
    owner   => 'root',
    mode    => '0600',
    content => template("${module_name}/useradd.erb"),
  }

}
