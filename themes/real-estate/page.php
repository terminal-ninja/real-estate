<?php get_header(); ?>

  <main>
    <?php if (have_posts()): while (have_posts()) : the_post(); ?>
    <section class="center">
      <h1><?php the_title(); ?></h1>
    </section>
    <section>
      <div class="inner">
        <?php the_content(); ?>
      </div>
    </section>
    <?php endwhile; ?>

    <?php else: ?>

      <!-- article -->
      <article>

        <h1><?php _e( 'Sorry, nothing to display.', 'html5blank' ); ?></h1>

      </article>
      <!-- /article -->

    <?php endif; ?>
  </main>
<?php get_footer(); ?>

