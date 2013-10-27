class solr::install inherits solr {

 solr::tomcat { $tomcats:
   base_dir => $solr::params::base_dir
 }
   
 solr::shard { $shards:
   base_dir => $solr::params::base_dir
 }
 
}