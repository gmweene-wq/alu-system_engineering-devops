# 0-strace_is_your_friend.pp
# Fixes the WordPress 500 error by correcting the .phpp typo to .php in wp-settings.php
exec { 'fix-wordpress':
  command  => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  provider => shell,
}
