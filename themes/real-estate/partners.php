<aside class="partners">
  <p><stong>Associate Members</stong></p>
  <ul class="advetise-bxslider">
    <?php
      if( have_rows('partner', 201) ):
          while ( have_rows('partner', 201) ) : the_row(); ?>
            <li><img src="<?php the_sub_field('logo'); ?>"></li>
        <?php endwhile;
      else :
      endif;
    ?>
  </ul>
</aside>