<div class="container o">

    <div class="left">
        
            <h3>Галерии</h3>
            <div class="gallery">
                <?php $gallery_name = ''; foreach($galleries as $gallery): ?>
                <?php if($gallery_name != $gallery->name): $gallery_name = $gallery->name; ?>
                <div class="separator dashed"></div>
                <h3><?php echo $gallery->name; ?></h3>
                <?php endif; ?>
                <div class="photo round">
                    <a href="<?php echo base_url().'gallery/browse_gallery/'.$gallery->id_gallery; ?>"><img style="width: 132px;" alt="" src="<?php echo base_url().'public/uploaded/gallery/thumbnails/'. $gallery->image; ?>" /></a>
                    <span><?php echo $gallery->description; ?></span>
                </div>
                <?php endforeach; ?>                
            </div>

    </div>

    <div class="right">
        <?php $this->load->view('elements/sidebar'); ?>
    </div>


</div>
