exec {"Enable Mongo Server service":
command => 'systemctl enable mongod.service',
path => ['/bin','/sbin','/usr/sbin'],
provider => shell,
onlyif => '/usr/bin/test -e /etc/yum.repos.d/mongodb.repo',
}



exec {"start Mongo Server service":
command => 'systemctl start mongod.service',
path => ['/bin','/sbin','/usr/sbin'],
provider => shell,
onlyif => '/usr/bin/test -e /etc/yum.repos.d/mongodb.repo',
}





