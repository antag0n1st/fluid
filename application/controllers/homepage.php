<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Homepage extends MY_Controller {

	public function index()
	{
            Head::instance()->load_css('nivo-slider');
            Head::instance()->load_css('light');
                Head::instance()->load_js('jquery.nivo.slider.pack');
                
         
                
               
                $data['main_content'] = 'homepage';
		$this->load->view('layout/layout',$data);
	}
}
