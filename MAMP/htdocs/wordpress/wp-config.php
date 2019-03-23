<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'carbontracer' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'm?UD]zB^t`0Y~m:{0hk!&*Qru`A?E5T?ihFa v:aq}s7LUn]eQ)nNSg?l-vU}oDZ' );
define( 'SECURE_AUTH_KEY',  'R(0@u5h$BF6yB#2C~^B$[-Vq$P0}`.3A8pGpJ.fUx$SU(.N-ffhJA8Q3of;Bh<0<' );
define( 'LOGGED_IN_KEY',    '(lfvNuDrb[qvFd<O9#M;m8X>D=dFHQ%aS6$tcG/j_P6-?G>-*4|w#_@2]EDH)2cV' );
define( 'NONCE_KEY',        'YLfJuu{Ft<m+nSxYaN[iHTJLKM2;uR]Q8/z/qF9hv0!$B+e_kbTe0y3Wx<i,QE)B' );
define( 'AUTH_SALT',        ':+fP&!3s_TnWmW_Q:$tG1_YJ!yI=O&v8>]Wt)acXNpU_}4rzg_d:AkHXmR)EDkGm' );
define( 'SECURE_AUTH_SALT', 'ff j;BZ+9n2 &wb(~Y-s5$}+GtH@9gw)UlcsxCXr8KH7qIjW~!LhY{ID+p&#J4m@' );
define( 'LOGGED_IN_SALT',   'o:#mkY@{n}e!qGh67=t%lC@=G)jo^RA!]<}}UdmK@g!]4LF*yiAI+/9:HJJ%#^_x' );
define( 'NONCE_SALT',       'I(WSN&BiS)qIZn`{QY(*q{IWZ<cxs>${XTSH{0ph-6;G1D7*Y*JPa{fdZJI{J7D ' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
