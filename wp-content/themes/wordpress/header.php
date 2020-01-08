<?php get_template_part('parts/head'); ?>

<header>
    <a href="<?php bloginfo('url') ?>">
        <img src="<?php echo get_field('logotipo', 'options') ?>" alt="logo">
    </a>
    <?php wp_nav_menu(); ?>
</header>