<?php get_template_part('parts/head'); ?>

<header>
    <a href="#introducao">
        <img src="<?php echo get_field('logotipo', 'options') ?>" alt="logo">
    </a>
    <?php wp_nav_menu(); ?>
</header>

<nav class="navigation d-lg-block d-none">
    <div class="content">
        <p class="sessao"></p>
        <p class="title-site">
            001 Kamelo
        </p>
    </div>
</nav>

<nav class="localization d-lg-flex d-none">
    <i class="fas fa-map-marker-alt"></i>
    <p>
        <?php echo get_field('endereco', 'options'); ?>
    </p>
</nav>