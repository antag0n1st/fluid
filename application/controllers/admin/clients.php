<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
* @property CI_Loader $load
* @property CI_Form_validation $form_validation
* @property CI_Input $input
* @property CI_Email $email
* @property CI_DB_active_record $db
* @property CI_DB_forge $dbforge
* @property Clients_model $clients_model
*/
class Clients extends MY_Admin_Controller {
    public function index()
    {
        $this->show_clients();
    }
    
    public function new_client()
    {
        Head::instance()->title = 'Нов клиент';
        $data = array();
        $data['client']  = new Client();
        
        $data['main_content']   =   'admin/clients/new';
        $this->load->view('admin/layout/layout', $data);
    }
    
    public function edit_client($client_id)
    {
        if(is_numeric($client_id) )
        {
            Head::instance()->title = 'Уреди клиент';
            $this->load->model('clients_model');
            $options = array('clients_id'   =>  $client_id);
            $client = $this->clients_model->get_clients($options);
            if(count($client) == 1)
            {
                $client = $client[0];
                $data['client'] =   $client;
                $data['main_content']   =   'admin/clients/new';
                $this->load->view('admin/layout/layout', $data);
            }
            
        }
    }
    
    public function submit_client()
    {
        $this->load->model('clients_model');
        
        $client = new Client();
        $client->clients_id     = $this->input->post('clients_id');
        $client->name           = $this->input->post('name');
        $client->link           = $this->input->post('link');
        $client->image          = $this->input->post('featured_image_hidden');
        $client->date_created   = TimeHelper::DateTimeAdjusted();
        
        
        if($client->is_valid())
        {
            if($client->clients_id == 0)
            {
                $client->clients_id = $this->clients_model->insert_client($client);
            }
            else
            {
                $this->clients_model->update_client($client);
            }
            $msg = "Клиентот е успешно зачуван";
        }
        else
        {
            $msg = "Податоците за клиентот не се зачувани. Проверете дали сте ги
                    пополниле сите полиња";
        }
        
        $data = array();
        $data['msg']    = $msg;
        $data['client'] = $client;
        $data['main_content']   =   'admin/clients/new';
        $this->load->view('admin/layout/layout', $data);
        
    }
    
    
    
     public function upload_image() {
        $status = "";
        $msg = "";
        $file_element_name = 'featured_image';




        if ($status != "error") {
            $config['upload_path'] = /* base_url() . */'public/uploaded/clients/';
            $config['allowed_types'] = 'gif|jpg|png|doc|txt';
            $config['max_size'] = 1024 * 8;
            $config['encrypt_name'] = FALSE;

            $this->load->library('upload', $config);


            $file_name = 'default_featured_image.jpg';
            if (!$this->upload->do_upload($file_element_name)) {
                $status = 'error';
                $msg = $this->upload->display_errors('', '');
            } else {
                $data = $this->upload->data();

                if (count($data) > 0) {
                    $status = "success";
                    $msg = "File successfully uploaded";
                    $file_name = $data['file_name'];
 
                   // $image_helper = new ImageHelper();
                   // $image_helper->save_image(base_url() . $config['upload_path'] . $file_name, $file_name, 650, 250, 150, 150);
                } else {
                    unlink($data['full_path']);
                    $status = "error";
                    $msg = "Something went wrong when saving the file, please try again.";
                }
            }
            @unlink($_FILES[$file_element_name]);
        }
        echo json_encode(array('status' => $status,
            'msg' => $msg,
            'featured_image_name' => $file_name));
    }
    
    
     public function show_clients(){
        Head::instance()->title = 'Сите клиенти';
        $this->load->model('clients_model');
        $this->load->library('pagination');

        $per_page = 10;
        
        $clients = array();
        $clients = $this->clients_model->get_clients(array(),$per_page,$this->uri->segment(5));
        $config = array();
        
        $config['base_url'] =  base_url() . 'admin/clients/show_clients/';
        
        
        
        $config['total_rows'] = $this->clients_model->count_all_clients();
        $config['per_page'] = $per_page; 
        $config['uri_segment'] = '5'; 

        $this->pagination->initialize($config); 
        
        $data = array();
        $data['clients']       =   $clients;
        
        $data['main_content']   =   'admin/clients/clients';
        $this->load->view('admin/layout/layout', $data);
     }
     
     public function delete_client($client_id)
     {
        if(is_numeric($client_id))
        {
             $this->load->model('clients_model');
             $this->clients_model->delete_client($client_id);
             redirect(base_url() . 'admin/clients/show_clients');
        }
         
     }
    
}

?>
