class marsdb::service inherits marsdb {

      case $::marsdb::ensure {
           'present':{
              $service_ensure = 'running'
              $service_enable = true
            }
            'absent': {
              $service_ensure = 'stopped'
              $service_enable = false
            }
            default: { 
               fail("marsdb::ensure is set to $::marsdb::ensure, whish is not supported!")
            }

       }
       service { $::marsdb::service_name:
               ensure => $service_ensure,
               enable => $service_enable,
       }
}
