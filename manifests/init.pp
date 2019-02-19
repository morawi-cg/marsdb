class marsdb ( Enum['present','absent'] $ensure = 'present', String $service_name = $::params::service_name,
                                                          String $config_content = 'marsdb/mongod.conf'
                                                          

  )inherits marsdb::params {

     include marsdb::install
     include marsdb::config
     include marsdb::service
   
     Class['marsdb::install']
     -> Class['marsdb::config']
     -> Class['marsdb::service']

}
