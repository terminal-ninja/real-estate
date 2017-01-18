 <div class="button">
                  <?php if ( !is_user_logged_in() ) :
                      echo '<a class="primary primary-outline">Read More</a>';
                    
                    elseif (is_user_logged_in()) :
                      
                      echo '<a href="<?php the_permalink(); ?>" class="primary primary-outline">Read More</a>';
                    
                    
                    endif;
                    ?>
                </div>