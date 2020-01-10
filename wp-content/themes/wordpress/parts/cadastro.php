<div class="section" data-anchor="cadastre-se">
    <div id="cadastro">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="title-1-cad"><?php echo get_field('titulo_1_cadastro'); ?></div>
                    <div class="title-2-cad"><?php echo get_field('titulo_2_cadastro'); ?></div>
                    <div class="desc">
                        <?php echo get_field('descricao_cadastro'); ?>
                    </div>
                </div>
                <div class="col-lg-7 d-flex justify-content-end">
                    <div class="form-eddy">
                        <div class="title-form">
                            Faça seu pré cadastro
                        </div>
                        <?php echo do_shortcode('[gravityform id=1 ajax=true title=false]'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>