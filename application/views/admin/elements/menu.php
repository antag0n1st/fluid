<style type="text/css">
    #menu li a {
        padding: 5px 10px;
        font-size: 15px;
    }
</style>
<div class="container">
    <div class="languages">
        <a href="<?php echo lang_url('mk');?>/admin/home">
            <img alt="mk" src="<?php echo base_url() . 'public/images/mk.jpg'; ?>" />
        </a>
        <a href="<?php echo lang_url('en'); ?>/admin/home">
            <img alt="en" src="<?php echo base_url() . 'public/images/en.jpg'; ?>" />
        </a>
    </div>
    <ul id="menu" class="clear">
        <li>
            <a href="#"><?php echo lang('Почетна'); ?></a>
            <ul>
                <li><a href="<?php echo base_url(); ?>">&laquo; fluidproject.com.mk</a></li>
                <li><a href="<?php echo base_url(); ?>admin/home"><?php echo lang('Админ почетна'); ?></a></li>
                <li><a href="<?php echo base_url(); ?>admin/footer/view_footer">Footer</a></li>
                <li><a href="<?php echo base_url(); ?>login/logout"><?php echo lang('Одјави се'); ?></a></li>
            </ul>
        </li>
        <li>
            <a href="#"><?php echo lang('Статии'); ?></a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/articles/new_article"><?php echo lang('Нова статија'); ?></a></li>
                <li><a href="<?php echo base_url(); ?>admin/articles/show_articles"><?php echo lang('Сите статии'); ?></a></li>
                <li><a href="#"><?php echo lang('Категории'); ?></a>
                    <ul>
                        <li><a href="<?php echo base_url(); ?>admin/articles_categories/new_category"><?php echo lang('Нова категорија'); ?></a></li>
                        <li><a href="<?php echo base_url(); ?>admin/articles_categories/show_categories"><?php echo lang('Сите категории'); ?></a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="#"><?php echo lang('Слајдови'); ?></a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/slides/new_slide"><?php echo lang('Нов слајд'); ?></a></li>
                <li><a href="<?php echo base_url(); ?>admin/slides/show_slides"><?php echo lang('Сите слајдови'); ?></a></li>
            </ul>
        </li>
        <li><a href="#"><?php echo lang('Мени'); ?></a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/menu/new_menu_item"><?php echo lang('Нов линк'); ?></a></li>
                <li><a href="<?php echo base_url(); ?>admin/menu/show_menu_items"><?php echo lang('Сите линкови'); ?></a></li>
            </ul>
        </li>
        <li><a href="#"><?php echo lang('Документи'); ?></a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/upload_documents"><?php echo lang('Прикачи документ'); ?></a></li>
                <li><a href="<?php echo base_url(); ?>admin/upload_documents/browse"><?php echo lang('Сите документи'); ?></a></li>
            </ul>
        </li>
        <li><a href="#"><?php echo lang('Странично мени'); ?></a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/sidebar/add_element"><?php echo lang('Нов елемент'); ?></a></li>
                <li><a href="<?php echo base_url(); ?>admin/sidebar/change_position"><?php echo lang('Сите елементи'); ?></a></li>
            </ul>
        </li>
    </ul>   
</div>
