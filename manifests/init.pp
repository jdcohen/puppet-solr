# Class: solr
#
# This module manages solr
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class solr (
  $collection   = $solr::params::collection,
  $numshards    = $solr::params::numshards,
  $base_dir     = $solr::params::base_dir,
  $shards       = $solr::params::shards,
  $tomcats      = $solr::params::tomcats,
  $tomcat_ports = $solr::params::tomcat_ports,
  $zkhosts      = $solr::params::zkhosts,
  $zkport       = $solr::params::zkport,
  $masterstatus = $solr::params::masterstatus,
  $master       = $solr::params::master,
  $slavestatus  = $solr::params::slavestatus
  ) inherits solr::params {
}
