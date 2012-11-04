<div class="container o">
    <h3>Сите Документи</h3>
   
    <div class="clear"></div>
    <div class="article-grid-holder">    
<?php foreach($documents as $document): ?>
<div class="article-grid-row">
    <div class="article-grid-thumbnail">
        <a  href="<?php echo base_url();?>admin/upload_documents/edit/<?php echo $document->id; ?>">
            <img src="<?php echo base_url(); ?>public/uploaded/documents/document_images//<?php echo $document->image_name; ?>" alt="" width="240" />
        </a>
    </div>
    <div class="article-grid-title">
        <a target="_blank" href="<?php echo base_url();?>public/uploaded/documents/<?php echo $document->file_name; ?>">
            <?php echo $document->file_name; ?>
        </a>
    </div>
    <div class="article-grid-date">
        <?php echo date("d.m.Y H:i", strtotime($document->date_created) ); ?>
    </div>
    <div class="article-grid-status">
    
    </div>
    <div class="article-grid-edit-links">
        <a href="<?php echo base_url();?>admin/upload_documents/edit/<?php echo $document->id; ?>" title="Измени">
        <img src="<?php echo base_url()?>public/images/edit_pencil_24_24.png" alt="" /></a>&nbsp;|&nbsp;
        <a href="#" class="delete-link" title="Избриши" rel="<?php echo $document->id; ?>"><img src="<?php echo base_url()?>public/images/delete_red_24_24.png" alt=""  /></a>
    </div>
    <?php echo $document->id; ?>
    <div class="clear"></div>


</div>
<hr class="clear" />
<?php endforeach; ?>
    </div>
<?php //echo $this->pagination->create_links(); ?>
</div>

<script type="text/javascript">
    $(".delete-link").click(function(){
        
        if(window.confirm('Дали сте сигурни дека сакате да избришете?'))
        {
            var articleId = $(this).attr('rel');
            window.location = "<?php echo base_url()?>admin/upload_documents/delete/" + articleId;
        }
    });
    

  
    
    
</script>