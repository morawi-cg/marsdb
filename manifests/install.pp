class marsdb::install inherits marsdb {
     # the above statement structure ensures that marsdb is created 1st and that we can use variables created within it


package { 'marsdb':

          ensure => $::marsdb::ensure,   #One could use $ensure for short but its more prudent to use this format

        }
   


}
