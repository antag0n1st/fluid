<div class="container o">

    <div class="left">

        <div id="stylized" class="myform">
            <form id="form" onsubmit="return validate_form();" name="form" method="post" action="<?php echo base_url() . 'contact'; ?>">
                <fieldset>
                    <h2><?php lang('Контакт'); ?></h2>
                    <p><?php lang('Доколку сакате да не контактирате искористе ја оваа форма'); ?></p>

                    <label><?php lang('Име'); ?>
                        <span class="small"><?php lang('Кој ни пишува'); ?> ?</span>
                    </label>
                    <input type="text" name="name" id="name" />

                    <label><?php lang('еМаил'); ?>
                        <span class="small"><?php lang('На кого да одговориме'); ?> ?</span>
                    </label>
                    <input type="text" name="email" id="email" />

                    <label><?php lang('Порака'); ?>
                        <span class="small"><?php lang('Што сакате да ни кажете/прашате'); ?> ?</span>
                    </label>
                    <textarea cols="1" rows="1" name="message" id="message"></textarea>


                    <button type="submit" class="button round"><?php lang('Испрати'); ?></button>

                    <div class="spacer"></div>
                </fieldset>
            </form>
            <p style="margin: 0 auto;"></p>
        </div>
        <div>
            <?php if ($is_sent): ?> <?php lang('Вашата порака беше успешно испратена'); ?> <?php endif; ?>
        </div>

    </div>
    
   
    <div class="right">
        <?php $this->load->view('elements/sidebar'); ?>
    </div>

</div>


<script type="text/javascript">
    function validate_form()
    {
        if($("#name").val() == ''){
            alert('<?php lang('Внесете Име'); ?>');
            return false;
        }
       
        if($("#email").val() == ''){
            alert('<?php lang('Внесете еМаил'); ?>');
            return false;
        }
       
        if($("#message").val() == ''){
            alert('<?php lang('Внесете Порака'); ?>');
            return false;
        }
       
        return true;
    }
</script>