class marsdb::config inherits marsdb {

   file { '/etc/mongod.conf':
        ensure => $::marsdb::ensure,
        mode => '27017',
        owner => 'root',
        group => 'root',
        content => File($::marsdb::config_content)
   }
}
