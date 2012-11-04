<h3><?php lang('Наши Проекти'); ?></h3>
<div class="slider-side">
    <?php foreach($latest_projects as $project): ?>
    <div class="wrap">
        <img style="height: 150px;" src="<?php echo base_url();?>public/uploaded/featured/<?php echo $project->featured_image;  ?>" alt="<?php echo $project->title; ?>" />
        <p><a href="<?php echo base_url(); ?>articles/<?php echo $project->id . '-' . $project->slug; ?>">
                <?php echo $project->title; ?>
            </a>
        </p>
    </div>
    <?php endforeach; ?>
</div>