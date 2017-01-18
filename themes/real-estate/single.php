<?php get_header(); ?>

	<main role="main">
	<!-- section -->
	<section class="content">

		<div class="inner">
			<?php if (have_posts()): while (have_posts()) : the_post(); ?>

				<!-- article -->
				<article class="full" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

					<h1>
						<?php the_title(); ?>
					</h1>

					<!-- post thumbnail -->
					<?php if ( has_post_thumbnail()) : // Check if Thumbnail exists ?>
							<figure class="one-third"><?php the_post_thumbnail(); // Fullsize image for the single post ?></figure>
					<?php endif; ?>
					<!-- /post thumbnail -->

					<!-- post details -->
		<!-- 			<span class="date"><?php //the_time('F j, Y'); ?> <?php //the_time('g:i a'); ?></span>
					<span class="author"><?php //_e( 'Published by', 'html5blank' ); ?> <?php //the_author_posts_link(); ?></span>

					<span class="comments"><?php //if (comments_open( get_the_ID() ) ) comments_popup_link( __( 'Leave your thoughts', 'html5blank' ), __( '1 Comment', 'html5blank' ), __( '% Comments', 'html5blank' )); ?></span> -->
					<!-- /post details -->

					<div class="text"><?php the_content(); // Dynamic Content ?></div>
				</article>
				<article class="one-third 2-col">
					<?php //get_sidebar(); ?>
				</article>

			<?php endwhile; ?>

			<?php else: ?>

				<!-- article -->
				<article>

					<h1><?php _e( 'Sorry, nothing to display.', 'html5blank' ); ?></h1>

				</article>
				<!-- /article -->

			<?php endif; ?>
		</div>

	</section>
	<!-- /section -->

  
	</main>



<?php get_footer(); ?>
