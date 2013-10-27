define solr::tomcat (
  $base_dir = $solr::params::base_dir,
) {

  $tomcats = $name
  
   file { "${base_dir}/${tomcats}":
    ensure  => present,
    owner   => 'tomcat',
    group   => 'tomcat',
    mode    => 0644,
    recurse => true,
    source  => 'puppet:///modules/solr/tomcat-base',
    require => User['tomcat'],
  }
  
}