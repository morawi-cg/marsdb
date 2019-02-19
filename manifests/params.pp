class marsdb::params {

     $service_name = $facts['os']['osfamily'] ? {
       'RedHat' -> 'mongod',
        default => 'mongod',
       


}
