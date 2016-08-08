class useradd::service inherits useradd {

  #
  validate_bool($useradd::manage_docker_service)
  validate_bool($useradd::manage_service)
  validate_bool($useradd::service_enable)

  validate_re($useradd::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${useradd::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $useradd::manage_docker_service)
  {
    if($useradd::manage_service)
    {
      #service or exec here
    }
  }
}
