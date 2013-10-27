define solr::shard (
  $base_dir = $solr::params::base_dir,
) {
  
  $shards = $name
  
  file { "${base_dir}/${shards}":
    ensure  => present,
    owner   => 'tomcat',
    group   => 'tomcat',
    mode    => 0644,
    recurse => true,
    source  => 'puppet:///modules/solr/solr-base',
    require => File['${base_dir}/${tomcats}'],
  }
  
}