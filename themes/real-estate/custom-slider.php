<section class="hero-slider">
  <div class="hero-carousel">
    <ul class="bxslider">
      <?php
        if( have_rows('custom_slider') ):
            while ( have_rows('custom_slider') ) : the_row(); ?>
              <li style="background: url('<?php the_sub_field('background'); ?>')">
                <div class="overlay">
                  <?php $image = get_sub_field('logo'); 
                      echo '<figure><img src="' . $image['url'] . '" alt="' . $image['alt'] . '" /></figure>';
                  ?>
                  <div class="inner">
                    <h2><?php the_sub_field('heading'); ?></h2>
                    <h3><?php the_sub_field('text_area'); ?></h3>
                  </div>
                </div>
              </li>
         <?php endwhile;
        else :
         endif;
      ?>
    </ul>
  </div>
</section>
