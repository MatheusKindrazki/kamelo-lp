<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'kamelo');

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'kamelo');

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', 'kamelo');

/** Nome do host do MySQL */
define( 'DB_HOST', 'db:3306');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'OqwNW#sP&H7_vbF<OZV*>uW1,H]b^q3PXuk9`v/F63sIkY&@/8sJ#aN(Z6fs[r-`' );
define( 'SECURE_AUTH_KEY',  'vT(S#9l.`c>;Q->(X-q7gpL.R%*Pk99w%9@`LTC 7qq q6A;HmpU&5s,2^=jk0e{' );
define( 'LOGGED_IN_KEY',    '&A_6uJ#uhH;}ZH&ysB)418S-,x%}>~->6*-S<$3sd_zk{t]yYiTdSmoYt1Ph6pL0' );
define( 'NONCE_KEY',        'gR2APn^,^kLTT+q.;,xZI6xm*ERk>2kE$O0$PsN->cZcKe:e_vX,fCHr9{#tBkp{' );
define( 'AUTH_SALT',        'FS~$a2;ak8m)@kR[A9BYE>=M1.|c->2>3S|XVo(]heL/gvG|;i31,dJV)Rj;Zdx>' );
define( 'SECURE_AUTH_SALT', 'tQ>;pL/k+mw]+]~a;@p4mCyso<m.9-A<(k9c3ccFnPwV(E0ivlOt8ylJHe }jL@N' );
define( 'LOGGED_IN_SALT',   'xk{(*[LIKeB:qu(sh#3d^yuvNn_C)=p/pLogG2}E()$>FYHtWDP0R)&h*XC4T2Af' );
define( 'NONCE_SALT',       'b4~EBM)KifgxHIbg3aB$gT{i(aook*S/4n+.<N[*.h|e&n4*s8Trt2Tei,?H_#dG' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);
ini_set("display_errors", 0);

define('WP_HOME','http://localhost:9000');
define('WP_SITEURL','http://localhost:9000');

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
