class solr::params {
  $collection   = 'productCatalog'
  $numshards    = '2'
  $base_dir     = '/usr/local'
  $shards       = [ 'solr_shard1', 'solr_shard2' ]
  $tomcats      = [ 'tomcat-1', 'tomcat-2' ]
  $tomcat_ports = [ '8080', '8081' ]
  $zkhosts      = [ 'localhost' ]
  $zkport       = '2181'
  $masterstatus = true
  $master       = ''
  $slavestatus  = false
}