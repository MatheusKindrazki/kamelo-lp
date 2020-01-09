<div class="section" data-anchor="introducao">
    <div id="banner">
    <div class="row h-100">
        <div class="col-lg-5">
            <div class="info">
                <div class="top">
                    <h1 class="title-1">
                        <?php echo get_field('titulo_banner'); ?>
                    </h1>
                    <p>
                        <?php echo get_field('descricao_banner'); ?>
                    </p>
                </div>
                <a href="#cadastre-se" class="btn-theme">Cadastre-se</a>
                <div class="redes">
                    <a href="<?php echo get_field('facebook', 'options') ?>" target="_blank">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="<?php echo get_field('twitter', 'options') ?>" target="_blank">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="<?php echo get_field('instagram', 'options') ?>" target="_blank">
                        <i class="fab fa-instagram"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-lg-7">
            <div class="img-banner" style="background-image: url('<?php echo get_field('imagem_banner'); ?>')"></div>
        </div>
    </div>
</div>
</div>