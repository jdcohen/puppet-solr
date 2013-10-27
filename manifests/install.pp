class solr::install inherits solr {

  file { "${base_dir}/${shards}":
    ensure  => present,
    owner   => 'tomcat',
    group   => 'tomcat',
    mode    => 0644,
    recurse => true,
    source  => 'puppet:///modules/solr/solr-base',
    require => File['${base_dir}/${tomcats}'],
  }
  
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