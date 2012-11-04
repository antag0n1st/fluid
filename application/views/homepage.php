<script type="text/javascript">
$(document).ready(function() {
        $(window).load(function() {
            $('#slider').nivoSlider();
        });     
});
</script>
<?php $this->load->view('elements/slidebar'); ?>

<div class="top-side-holder">
    
        <?php $this->load->view('elements/fb-likebox-default'); ?>
   
</div>




<div class="container o" style=" margin-top: 10px;">

    <div class="panel" style="margin-left: 0px;">
        <div class="home-header"><h2><?php lang('Новости'); ?></h2></div>
        
        <?php foreach($latest_news as $news) : ?>
        
            <div class="latest-news">
                <a href="<?php echo base_url(); ?>articles/<?php echo $news->id . '-' . $news->slug; ?>" class="mask">
                    <img alt="" src="public/uploaded/featured/thumbnails/<?php echo $news->featured_image;  ?>" /></a>
                <h3><a href="<?php echo base_url(); ?>articles/<?php echo $news->id . '-' . $news->slug; ?>"><?php echo $news->title; ?></a></h3>
            </div>
        
        <?php endforeach; ?>
    </div>
    
    <div class="panel">
        <div class="home-header" ><h2><?php lang('Проекти'); ?></h2></div>

        <?php foreach($latest_projects as $project): ?>
        
        <div class="latest-projects">
            <a  href="<?php echo base_url(); ?>articles/<?php echo $project->id . '-' . $project->slug; ?>" class="mask">
                <img src="public/uploaded/featured/<?php echo $project->featured_image;  ?>" /></a>
            <p><a  href="<?php echo base_url(); ?>articles/<?php echo $project->id . '-' . $project->slug; ?>"><?php echo $project->title; ?></a></p>
        </div>
        
        <?php endforeach; ?>
        
       
    </div>
    
    <div class="panel" style="margin-right: 0px;">
        <div class="home-header" ><h2><?php lang('Специјално'); ?></h2></div>
        <div style="padding:10px">
            
            <?php if(isset($document) and $document->id): ?>
            <a href="<?php echo base_url(); ?>public/uploaded/documents/<?php echo $document->file_name; ?>" target="_blank">
            <img src="<?php echo base_url(); ?>public/uploaded/documents/document_images/<?php echo $document->image_name; ?>" alt="" width="284" />
            </a>
            <?php endif; ?>
            
        </div>
    </div>

</div>