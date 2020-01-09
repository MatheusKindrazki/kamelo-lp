<?php get_template_part('parts/head'); ?>

<header>
    <a href="#introducao">
        <img src="<?php echo get_field('logotipo', 'options') ?>" alt="logo">
    </a>
    <?php wp_nav_menu(); ?>
</header>

<nav class="navigation">
    <div class="content">
        <p class="sessao"></p>
        <p class="title-site">
            001 Kamelo
        </p>
    </div>
</nav>