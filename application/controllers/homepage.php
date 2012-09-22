<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Homepage extends MY_Controller {

	public function index()
	{
            Head::instance()->load_css('nivo-slider');
            Head::instance()->load_css('light');
                Head::instance()->load_js('jquery.nivo.slider.pack');
                $this->load->model('slides_model');
                $this->load->model('menus_model');
                $this->load->model('articles_model');
                $this->load->model('footer_model');
                
                $slides = $this->slides_model->get_slides();
                $data['slides'] =   $slides;
                
                $menu_items         = $data['menu_items']  = $this->menus_model->get_menu_items_with_children();
                $latest_news        = $data['latest_news'] = $this->articles_model->get_latest_news();
                $latest_projects    = $data['latest_projects']  =   $this->articles_model->get_articles_by_category(13, // projects
                                                                                           array(),3,0);
                $footer             = $data['footer']           =   $this->footer_model->get_footer();
                
               
                $data['main_content'] = 'homepage';
		$this->load->view('layout/layout',$data);
	}
}
