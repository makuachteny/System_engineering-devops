# Let's bring that limit higher
exec { 'The limit':
  onlyif   => 'test -e /etc/default/nginx',
  command  => 'sed -i "5s/[0-9]\+/$( ulimit -n )/" /etc/default/nginx; service nginx restart',
  path => '/usr/local/bin/:/bin/'
}
