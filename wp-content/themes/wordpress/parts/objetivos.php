<div class="section" data-anchor="nosso-objetivo">
    <div id="objetivos">
        <div class="container">
        <?php if( have_rows('objetivos') ): ?>
            <div class="row">
            <?php while ( have_rows('objetivos') ) : the_row(); ?>
                <div class="col-lg-4">
                    <div class="item-single">
                        <div class="img-item" style="background-image: url('<?php the_sub_field('imagem'); ?>')"></div>
                        <div class="title"><?php the_sub_field('titulo'); ?></div>
                        <div class="desc">
                            <?php the_sub_field('descricao'); ?>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
            </div>
        <?php endif; ?>
        </div>
    </div>
</div>