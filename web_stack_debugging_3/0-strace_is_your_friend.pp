# Automated Puppet that uses strace to find and fix why Apache is returning a 500 error
exec { 'fixed-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
