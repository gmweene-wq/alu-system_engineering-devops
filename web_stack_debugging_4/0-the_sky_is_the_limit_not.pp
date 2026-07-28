# Increases the amount of allowed connections to fix nginx under heavy load
exec { 'fix-for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx && service nginx restart',
  path    => '/usr/local/bin/:/bin/:/usr/bin/:/usr/sbin/',
}
