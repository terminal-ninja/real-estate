<section class="hero-slider">
  <main class="hero-carousel">
    <ul class="bxslider">
      <?php query_posts( 'category_name=image-slider-1&posts_per_page=-1' ); ?>
      <?php while ( have_posts() ) : the_post(); ?>
      <li>
        <?php 
        $image = get_field('slide_image');
        if( !empty($image) ): ?>
          <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
        <?php endif; ?>
        <div class="overlay">
          <h2 class="hero-heading"><?php the_title(); ?></h2>
          <div class="button">
            <a href="<?php the_field('button_link'); ?>" class="primary <?php the_field('custom_class'); ?>"><?php the_field('button_text'); ?></a>
          </div>
        </div>
      </li>
      <?php endwhile; 
        wp_reset_query();
      ?>
    </ul>
  </main>
</section>