<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_wordpress' );

/** Database username */
define( 'DB_USER', 'wordpress_user' );

/** Database password */
define( 'DB_PASSWORD', 'wordpress_secret' );

/** Database hostname */
define( 'DB_HOST', 'container_mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
/*
define('AUTH_KEY',         ${WORDPRESS_AUTH_KEY});
define('SECURE_AUTH_KEY',  ${WORDPRESS_SECURE_AUTH_KEY});
define('LOGGED_IN_KEY',    ${WORDPRESS_LOGGED_IN_KEY});
define('NONCE_KEY',        ${WORDPRESS_NONCE_KEY});
define('AUTH_SALT',        ${WORDPRESS_AUTH_SALT});
define('SECURE_AUTH_SALT', ${WORDPRESS_SECURE_AUTH_SALT});
define('LOGGED_IN_SALT',   ${WORDPRESS_LOGGED_IN_SALT});
define('NONCE_SALT',       ${WORDPRESS_NONCE_SALT});
*/

define('AUTH_KEY',         't#-n9|2{?tb84aLBw+AwaAwC(Q_t,Axu{@L7u/}^1rH;`L+turuI!x]&`I]!$%*v');
define('SECURE_AUTH_KEY',  '>+r0KU!cKxK+1v/v90YrE|reZ&| Agn.Sf0Rt43p.zK2*;2-aGL_TQO_;%awj8r5');
define('LOGGED_IN_KEY',    'f9mGHgqu/,p9lBH.v.Rf(3V`zYnWHoEf:,q.A0*G{y-#g1A5bb7*NhgyNPf*/We}');
define('NONCE_KEY',        '*zr}^;,9nr5EPACDG[BxJ:g:-<v #bFcK5B6YfT|]xe-9jF:qeq*^6PZ1hkqkJ4Y');
define('AUTH_SALT',        ' ,LAl72ju_jFp)Ev;rZTeb0RmkhJw{<I&kX-!0S%z@y9e7i?e.=43~]+*$_rC]Gg');
define('SECURE_AUTH_SALT', 'nLhY.tOp|<u85Uh`d1+ge$%*iv$-xFmE]P2>aEJ8d_UdN8+=e{uZIrpx9Czwiz2C');
define('LOGGED_IN_SALT',   '3/+CV$&%q;MNk?KT+[5~{d+#n<QHYXTaN$vq<-C-UAhr@%Ox-+C},=>/bc^C&M$r');
define('NONCE_SALT',       '_fu@|5|sj&wOnZ|E-tD`l##c|&TL#1?_sd=zvw&rxb>4)9{1*[Fp2+6[+X:19)2G');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';