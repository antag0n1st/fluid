<script src="<?php echo base_url() ?>public/js/jquery.iframe-post-form.js" type="text/javascript"></script>
<div class="container o">
    <h3>Прикачување на документ</h3>
    
    <div>
    <!-- featured image begin -->
            <label for="featured_image">Насловна слика:</label><span class="small">(препорачани димензии: 284 x 240)</span>
            <iframe name="iframe-post-form" id="iframe-post-form" style="width:0px;height:0px"></iframe>
            <div class="featured-image-preview-holder" style="<?php FieldHelper::field($document->id, "width:284px;height:240px", "width:0px;height:0px"); ?>;overflow:hidden;">
                <img src="<?php FieldHelper::field($document->id, base_url() . 'public/uploaded/documents/document_images/' . $document->image_name, ""); ?>" id="featured_image_preview" alt="" width="284" />
            </div>
            <?php
            echo form_open('admin/upload_documents/upload_image', array('id' => 'upload_image_form',
                'enctype' => "multipart/form-data",
                'target' => "iframe-post-form"));
            ?>
            <input type="file" id="featured_image" name="featured_image" size="5" />
            <input class="button round" type="button" id="btn_featured_image"  name="btn" value="OK" />
            <div id="progress"></div>
            </form>
        </div><!-- featured image end -->
        
        <div style="margin-top:20px"><!-- file to upload begin -->
            <label>Фајл кој треба да се прикачи:</label>
            <iframe name="iframe-post-file-form" id="iframe-post-file-form" style="width:0px;height:0px"></iframe>
            <?php
            echo form_open('admin/upload_documents/upload_file', array('id' => 'upload_file_form',
                'enctype' => "multipart/form-data",
                'target' => "iframe-post-file-form"));
            ?>
            <input type="file" id="featured_file" name="featured_file" size="5" />
            <input class="button round" type="button" id="btn_featured_file"  name="btn" value="OK" />
            <div id="progress-file"></div>
            <div id="uploaded-file-link" style="margin-top:10px">
                <?php if($document->id > 0) : ?>
                <a href="<?php echo base_url(); ?>public/uploaded/documents/<?php echo $document->file_name; ?>" target="_blank">
                    <?php echo $document->file_name; ?>
                </a>
                <?php endif; ?>
            </div>
            </form>
            
            
            
            
            
        </div><!-- file to upload end -->
        
        
        <div><!-- save image and file begin -->
            
           <?php echo form_open('admin/upload_documents/submit', array('id' => 'save_form') );
            ?>
            
            <input type="hidden" id="featured_image_hidden" name="featured_image_hidden" value="" />
            <input type="hidden" id="featured_file_hidden" name="featured_file_hidden" value="" />
            
             <input class="button round" type="submit" name="submit" value="Објави" />
            <?php echo form_close(); ?>
            
        </div><!-- save image and file end -->
        
        
</div>
<script type="text/javascript">
    $(document).ready(function() {
// ajax file upload
        $("#btn_featured_image").click(function(){
            $("#upload_image_form").submit();
        })
                     
        $("#upload_image_form").iframePostForm
        ({
            json : true,
            post : function ()
            {
                //alert("Post!");
                $('#progress').html('Uploading...');
            },
            complete: function (response)
            {
                // alert(response.featured_image_name);
                // show the preview of the image thumbnail
                var featured_img = $('#featured_image_preview');
                var preview_holder = $('.featured-image-preview-holder');
                featured_img.attr('src','<?php echo base_url() . 'public/uploaded/documents/document_images/'; ?>' +
                    response.featured_image_name);
                featured_img.attr('width', '284px');
                            
                preview_holder.css('width','284px');
                preview_holder.css('height','240px');
                            
                $('#featured_image').val('');
                            
                $('#featured_image_hidden').val(response.featured_image_name);
                            
                $('#progress').html('');
            }
                
        });
        // end ajax file upload
                     
        $("#btn_featured_file").click(function(){
            $("#upload_file_form").submit();
        })
                     
         $("#upload_file_form").iframePostForm
        ({
            json : true,
            post : function ()
            {
                //alert("Post!");
                $('#progress-file').html('Uploading file...');
            },
            complete: function (response)
            {
                
                console.log(response);
                
                $('#uploaded-file-link').empty();
                
                $('<a>',{
                    text:  response.featured_image_name,
                    title: response.featured_image_name,
                    href:  '<?php echo base_url(); ?>public/uploaded/documents/' + response.featured_image_name,
                    target:'_blank'
                }).appendTo('#uploaded-file-link');
             
                 $('#featured_file_hidden').val(response.featured_image_name);
             
                $('#progress-file').html('');
            }
                
        });
                     
                     
    });
</script>