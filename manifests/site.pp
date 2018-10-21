
registry_key { 'HKCR\\Software\\Vendor': ensure => present }
Registry_key { ensure => present }
Registry_value { ensure => present, data => 'Puppet Default Data' }
