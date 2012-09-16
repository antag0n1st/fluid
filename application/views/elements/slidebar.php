<div class="container " >
    <div class="slider">
        <div id="wrapper">
            <div class="slider-wrapper theme-light">
                <div id="slider" class="nivoSlider">
                    
                    
                    <?php foreach ($slides as $slide): ?>

                        <?php if (strlen($slide->link) > 1) : ?>
                            <a href="<?php echo $slide->link; ?>">
                            <?php endif; ?>
                            <img src="<?php echo base_url() . 'public/uploaded/slider/' . $slide->image; ?>" title="<?php echo $slide->title; ?>" />
                            <?php if (strlen($slide->link) > 1) : ?>
                            </a>
                        <?php endif; ?>
                    <?php endforeach; ?>
                    
                    
                    
                    
<!--                    <img src="public/images/slider1.jpg"  alt="" />
                    <a href="#"><img src="public/images/slider2.jpg"  alt="" title="Единствена, реномирана и потврдена компанија во изработка и спроведување на технологиите за GMP-сертификација на системите за обработка на вода за медицински и фармацевтски потреби во Република Македонија." /></a>
                    <img src="public/images/slider3.jpg"  alt="" data-transition="slideInLeft" />
                    <img src="public/images/slider4.jpg" alt="" title="#htmlcaption" />
                </div>
                <div id="htmlcaption" class="nivo-html-caption">
                    <b>20 Години</b> Професионално искуство во еколошки третман на вода 
                </div>-->
                </div>
            </div>
        </div>
    </div>
</div>

<!--
<div class="container">
    <div class="flexslider">
        <ul class="slides">
            <?php //foreach ($slides as $slide): ?>
                <li>
                    
                    <?php //if( strlen($slide->link) > 1) : ?>
                    <a href="<?php //echo $slide->link; ?>">
                    <?php //endif; ?>
                        <img src="<?php //echo base_url() . 'public/uploaded/slider/' . $slide->image; ?>" />

                        <div class="flex-caption">
                            <h2 style=""><?php //echo $slide->title; ?></h2>
                            <p>
                                <?php //echo $slide->description; ?>
                            </p>
                        </div>
                    <?php //if( strlen($slide->link) > 1) : ?>
                    </a>
                    <?php //endif; ?>
                </li>
            <?php //endforeach; ?>
        </ul>
    </div>
</div>

<script type="text/javascript">
    $(window).load(function() {
        $('.flexslider').flexslider();
    });
</script>-->