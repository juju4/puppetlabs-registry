
registry_key { 'HKCR\\Software\\Vendor': ensure => present }
Registry_key { ensure => present }
Registry_value { ensure => present, data => 'Puppet Default Data' }

registry_key { 'HKCR\\htafile\\shell\\open\\command': ensure => present }
registry_value { "HKCR\\htafile\\shell\\open\\command":
  path       => "HKCR\\htafile\\shell\\open\\command",
  ensure     => present,
  value      => '(default)',
  type       => string,
  data       => '%windir%\system32\notepad.exe',
}
