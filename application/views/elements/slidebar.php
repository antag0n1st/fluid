<div class="container " >
    <div class="slider">
        <div id="wrapper">
            <div class="slider-wrapper theme-light">
                <div id="slider" class="nivoSlider">
                    <?php foreach ($slides as $slide): ?>
                        <?php if (strlen($slide->link) > 1) : ?>
                            <a href="<?php echo $slide->link; ?>">
                            <?php endif; ?>
                            <img src="<?php echo base_url() . 'public/uploaded/slider/' . $slide->image; ?>" title="<?php echo $slide->title; ?>" />
                            <?php if (strlen($slide->link) > 1) : ?>
                            </a>
                    
                        <?php endif; ?>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>