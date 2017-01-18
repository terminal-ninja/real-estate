<section class="tips">
  <div class="inner">
    <ul class="bxslider-tips">
      <?php 
        $args = array(
          'post_type' => 'agent_advice',
          'posts_per_page' => -1,
          'tax_query' => array(
            array(
              'taxonomy' => 'advice_category',
              'field'    => 'slug',
              'terms'    => array( 'tips' ),
            ),
          ),
        );
        $loop = new WP_Query( $args );
        while ( $loop->have_posts() ) : $loop->the_post(); 
         ?>
          <li>
              <h4><?php the_field('sub_heading'); ?></h4>
              <?php the_content(); ?>
          </li>
        <?php endwhile; ?>
        <?php wp_reset_query(); ?>
      </ul>
  </div>
</section>