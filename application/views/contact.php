<div class="container o">

    <div class="left">

        <div id="stylized" class="myform">
            <form id="form" onsubmit="return validate_form();" name="form" method="post" action="<?php echo base_url() . 'contact'; ?>">
                <fieldset>
                    <h2>Контакт</h2>
                    <p>Доколку сакате да не контактирате искористе ја оваа форма</p>

                    <label>Име
                        <span class="small">Кој ни пишува ?</span>
                    </label>
                    <input type="text" name="name" id="name" />

                    <label>еМаил
                        <span class="small">На кого да одговориме ?</span>
                    </label>
                    <input type="text" name="email" id="email" />

                    <label>Порака
                        <span class="small">Што сакате да ни кажете/прашате ?</span>
                    </label>
                    <textarea cols="1" rows="1" name="message" id="message"></textarea>


                    <button type="submit" class="button round">Испрати</button>

                    <div class="spacer"></div>
                </fieldset>
            </form>
            <p style="margin: 0 auto;"></p>
        </div>
        <div>
            <?php if ($is_sent): ?> Вашата порака беше успешно испратена <?php endif; ?>
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
            alert('Внесете Име');
            return false;
        }
       
        if($("#email").val() == ''){
            alert('Внесете еМаил');
            return false;
        }
       
        if($("#message").val() == ''){
            alert('Внесете Порака');
            return false;
        }
       
        return true;
    }
</script>