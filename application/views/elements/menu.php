<div class="menu-container" >
    <div class="languages">
        <a href="<?php echo lang_url('mk'); ?>">
            <img alt="mk" src="<?php echo base_url() . 'public/images/mk.jpg'; ?>" />
        </a>
        <a href="<?php echo lang_url('en'); ?>">
            <img alt="en" src="<?php echo base_url() . 'public/images/en.jpg'; ?>" />
        </a>
    </div>
    <h1><?php lang('20 години професионално искуство во еколошки третман на вода'); ?></h1>
    <ul id="menu" class="clear round">
        <?php MenuHelper::echo_menu($menu_items); ?>
    </ul>
</div>