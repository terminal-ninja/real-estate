<section class="hero">
    <div class="hero-image">
      <?php 
          $image = get_field('hero_image');
          if( !empty($image) ): ?>
            <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
          <?php endif; ?>
      <div class="overlay">
        <h1 class="hero-heading"><?php the_field('hero_title'); ?></h1>
        <p class="sub-title"><?php the_field('hero_sub-title'); ?></p>
      </div>
    </div>
</section>
