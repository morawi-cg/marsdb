exec {"Install Mongo Server":
command => 'yum -y install mongodb-org',
path => ['/bin','/sbin','/usr/sbin'],
provider => shell,
onlyif => '/usr/bin/test -e /etc/yum.repos.d/mongodb.repo',
}
