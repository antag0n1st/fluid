<script type="text/javascript">
$(document).ready(function() {
        $(window).load(function() {
            $('#slider').nivoSlider();
        });     
});
</script>
<?php $this->load->view('elements/slidebar'); ?>

<div class="container o" style=" margin-top: 10px;">

    <div class="panel" style="margin-left: 0px;">
        <div class="home-header"><h2><a href="#">Новости</a></h2></div>
        
        <?php foreach($latest_news as $news) : ?>
        
            <div class="latest-news">
                <a href="<?php echo base_url(); ?>articles/<?php echo $news->id . '-' . $news->slug; ?>" class="mask">
                    <img alt="" src="public/uploaded/featured/thumbnails/<?php echo $news->featured_image;  ?>" /></a>
                <h3><a href="<?php echo base_url(); ?>articles/<?php echo $news->id . '-' . $news->slug; ?>"><?php echo $news->title; ?></a></h3>
            </div>
        
        <?php endforeach; ?>
    </div>
    
    <div class="panel">
        <div class="home-header" ><h2><a href="#">Проекти</a></h2></div>

        <?php foreach($latest_projects as $project): ?>
        
        <div class="latest-projects">
            <a  href="<?php echo base_url(); ?>articles/<?php echo $project->id . '-' . $project->slug; ?>" class="mask">
                <img src="public/uploaded/featured/<?php echo $project->featured_image;  ?>" /></a>
            <p><a  href="<?php echo base_url(); ?>articles/<?php echo $project->id . '-' . $project->slug; ?>"><?php echo $project->title; ?></a></p>
        </div>
        
        <?php endforeach; ?>
        
        <div class="latest-projects">
            <a href="#" class="mask"><img src="public/images/project1.jpg" /></a>
            <p><a href="#">Пречистителна станица за отпадни води Езерани (реконструкција и модернизација)</a></p>
        </div>
        <div class="latest-projects">
            <a href="#" class="mask"><img src="public/images/project2.jpg" /></a>
            <p><a href="#">Систем за третман на санитарна и систем за третман на отпадна вода во ХЕЦ Св. Петка</a></p>
        </div>
    </div>
    
    <div class="panel" style="margin-right: 0px;"></div>

</div>