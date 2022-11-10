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
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'mysql' );

/** Database password */
define( 'DB_PASSWORD', '1234' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

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
define('AUTH_KEY',         'C5FK<|NWcgp_`bwSo_o4.9@^|1512<xv0<Awf/bjD-ajfzbTcZ)G^)nkoV|$.!%n');
define('SECURE_AUTH_KEY',  'YP=>0?8g4?9$5/XhLBypzfT!-+QWIV`8f(Qa:Fc/wX8hao|Q42^/J62AVVH6%oP;');
define('LOGGED_IN_KEY',    'Mp$(%JEOW$a|eepK.`!3$I I|.D-+ &Uk] kS0^8bZwU<.Eg9r_<AZ]I6|Pr|1</');
define('NONCE_KEY',        'RD1%9W:GM62<l 2a5$aI$o~JW)-=-OKH_vY!9xG~NRbk0 +2}-Hly7eb]<-4:Tj0');
define('AUTH_SALT',        'ai+5#;CYacl@u~Bv*;},lpvE3)E}3<4$0NC8m;o=Rg7Ss0X`IG,C|5,?EF6sTU`B');
define('SECURE_AUTH_SALT', '4J1g8c#izr9;>A#,Ag3C{*=hr&](~N$/[CC+A-VyZUzWaj8[^++DhB+yNd>BzCcG');
define('LOGGED_IN_SALT',   'Oc_SP3][rk*(nYpCo&%Ej~2d>Z`lnJCmX04{Ah>i+r`5w((FYE(`t-p|/Z+B~v(%');
define('NONCE_SALT',       'Q~f/85ND[)*SQ[8+{n&@S;1m:!I3hHCiv1#%3suv/-7Ufn_/x;u,v:7xC ~7SEDM');


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