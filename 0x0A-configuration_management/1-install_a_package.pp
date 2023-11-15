#!/usr/bin/pup
# Install an especific version of flask (2.1.0)
# Manifest file: install_flask.pp

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin'],
  require => Package['python3-pip'],
}
'