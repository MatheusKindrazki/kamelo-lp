<div class="section">
    <div id="sobre">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2 class="title-2"><?php echo get_field('titulo_sobre'); ?></h2>
                    <p>
                        <?php echo get_field('descricao_sobre'); ?>
                    </p>
                    <a href="#!" target="_blank" class="btn-theme purple">Cadastre-se</a>
                </div>
            </div>
        </div>
        <img src="<?php echo get_field('imagem_sobre'); ?>" alt="iphone" class="phone">
    </div>
</div>