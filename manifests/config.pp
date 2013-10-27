class solr::config inherits solr {
  group { 'tomcat':
    ensure   => present,
    gid      => 91,
  }

  user { 'tomcat':
    ensure  => present,
    comment => "Tomcat User",
    uid     => 91,
    gid     => 91,
    home    => '${base_dir}',
    shell   => '/bin/bash',
    require => Group['tomcat'],
  }
  
 file { "${base_dir}/${shards}/conf/solrconfig.xml":
    ensure  => present,
    owner   => 'tomcat',
    group   => 'tomcat',
    mode    => 0644,
    content => template('solr/solrconfig.xml.erb'),
    require => File['${base_dir}/${shards}'],     
  }

  file { "${base_dir}/${shards}/${collection}":
    ensure  => directory,
    owner   => 'tomcat',
    group   => 'tomcat',
    mode    => 0644,
    require => File['${base_dir}/${shards}'],
  }

  file { "${base_dir}/${shards}/${collection}/core.properties":
    ensure  => present,
    owner   => 'tomcat',
    group   => 'tomcat',
    mode    => 0644,
    content => template('solr/core.properties.erb'),
    require => File['${base_dir}/${shards}/${collection}'],
  }   
 
  
}