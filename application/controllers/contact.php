<?php
/**
 * @property CI_Loader $load
 * @property CI_Form_validation $form_validation
 * @property CI_Input $input
 * @property CI_Email $email
 * @property CI_DB_active_record $db
 * @property CI_DB_forge $dbforge
 */
class Contact extends MY_Controller{
    public function index(){
            
            $this->load->model('menus_model');
            $menu_items = $this->menus_model->get_menu_items_with_children();
        
            $this->load->model('footer_model');
            $footer = $this->footer_model->get_footer();
        
        
            $is_sent = false;
            $this->input->post('name');
            
            if($this->input->post('name')){
                $name = $this->input->post('name');
                $email = $this->input->post('email');
                $message = $this->input->post('message');
                $message = 'Испратено од: '.$name .' - '. $email. "\n\n" . $message;
                Mailer::send($email, 'vladimir.apostolski@gmail.com' , 'Kонтакт - fluidproject.com.mk', $message);
                $is_sent = true;
            }
            
            $data = array();
            $data['main_content'] = 'contact';
            $data['is_sent'] = $is_sent;
            $data['menu_items'] =   $menu_items;
            $data['footer'] =   $footer;
            
            Head::instance()->title = 'Контакт | Fluid Project';
            Head::instance()->title = 'Контакт форма и инфо | Fluid Project';
            
            $this->load->view('layout/layout',$data);
    }
}
?>