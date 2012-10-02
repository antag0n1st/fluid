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
        <!--<li><a href="#">Настани</a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/events/new_event">Нов настан</a></li>
                <li><a href="<?php echo base_url(); ?>admin/events/show_events">Сите настани</a></li>
                <li><a href="#">Категории</a>
                    <ul>
                       <li><a href="<?php echo base_url(); ?>admin/events_categories/new_event_category">Нова категорија</a></li>
                       <li><a href="<?php echo base_url(); ?>admin/events_categories/show_events_categories">Сите категории</a></li>
                    </ul>
                </li>
            </ul>
        </li>-->
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
        <!--<li>
            <a href="#">Newsletter</a>
            <ul>
                <li><a href="<?php echo base_url().'admin/newsletter/add_new'; ?>">Ново писмо</a></li>
                <li><a href="<?php echo base_url().'admin/newsletter'; ?>">Сите писма</a></li>
                <li><a href="<?php echo base_url().'admin/newsletter/browse_emails'; ?>">Сите емаил адреси</a></li>
            </ul>
        </li>-->
        <!--<li><a href="#">Галерии</a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/gallery/new_gallery">Нова галерија</a></li>
                <li><a href="<?php echo base_url(); ?>admin/gallery">Сите галерии</a></li>
                <li><a href="<?php echo base_url(); ?>admin/gallery/add_group">Нова Група</a></li>
                <li><a href="<?php echo base_url(); ?>admin/gallery/browse_groups">Сите Групи</a></li>
            </ul>
        </li>-->
        <!--<li><a href="#">Цитати</a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/quotes/new_quote">Нов цитат</a></li>
                <li><a href="<?php echo base_url(); ?>admin/quotes/show_quotes">Сите цитати</a></li>
            </ul>
        </li>
        <li><a href="#">Клиенти</a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/clients/new_client">Нов клиент</a></li>
                <li><a href="<?php echo base_url(); ?>admin/clients/show_clients">Сите клиенти</a></li>
            </ul>
        </li>-->
        <li><a href="#"><?php echo lang('Документи'); ?></a>
            <ul>
                <li><a href="<?php echo base_url(); ?>admin/upload_documents"><?php echo lang('Прикачи документ'); ?></a></li>
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
