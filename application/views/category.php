<div class="container o" style="margin-top: 10px;">
    <div class="left">
        <div class="img-container">
            <img alt="" src="<?php echo base_url() . 'public/uploaded/featured/' . $current_category->featured_image; ?>" />
        </div>
        <br />
        <h3 class="article-title"><?php echo $current_category->name; ?></h3>
        <div style="padding:5px 0 5px 0">
            <?php echo $current_category->description; ?>
        </div>
        <div>
            <?php foreach ($articles as $article) : ?>
                <div>
                    <div class="thumb" style="float:left;">
                        <a href="<?php echo base_url() . 'articles/' . $article->id . '-' . $article->slug; ?>">
                            <img src="<?php echo base_url() . 'public/uploaded/featured/thumbnails/' . $article->featured_image; ?>" alt="" width="120px" height="60px">
                            <span class="overlay"></span>
                        </a>
                    </div> 
                    <h3 class="title"><a href="<?php echo base_url() . 'articles/' . $article->id . '-' . $article->slug; ?>"><?php echo $article->title; ?></a></h4>
                        <p><strong><?php // FieldHelper::date_no_time_field($article->date_published);   ?></strong><?php /* echo $article->description; */ ?></p>
                </div>
                <div style="clear:both;"></div>
            <?php endforeach; ?>
        </div>
        <?php echo $this->pagination->create_links(); ?>
    </div>
    <div class="right">
        <?php $this->load->view('elements/sidebar'); ?>
    </div>
</div>
