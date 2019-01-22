
registry_key { 'HKCR\\Software\\Vendor': ensure => present }
Registry_key { ensure => present }
Registry_value { ensure => present, data => 'Puppet Default Data' }

registry_key { 'HKCR\\htafile\\shell\\open\\command': ensure => present }
registry::value { "HKCR\\htafile\\shell\\open\\command":
  key => "HKCR\\htafile\\shell\\open\\command",
  type       => string,
  value      => '(default)',
  data       => '%windir%\system32\notepad.exe',
}
