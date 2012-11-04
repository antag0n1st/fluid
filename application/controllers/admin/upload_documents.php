<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * @property CI_Loader $load
 * @property CI_Form_validation $form_validation
 * @property CI_Input $input
 * @property CI_Email $email
 * @property CI_DB_active_record $db
 * @property CI_DB_forge $dbforge
 * @property Articles_model $articles_model
 */
class Upload_documents extends MY_Admin_Controller {

    public function index($id = 0,$data = array()) {
        $this->load->model('documents_model');
        if ($id) {
            $document =$this->documents_model->get_document($id);
        } else {
            $document = new Document();
            $document->image_name = base_url() . 'public/uploaded/featured/documents_featured_image.jpg';
        }
        
        $data['document'] = $document;
        $data['main_content'] = 'admin/documents/new';
        $this->load->view('admin/layout/layout', $data);
    }
    
    public function edit($id = 0){
        $this->index($id);
    }
    
    public function delete($id){
        
        $this->load->model('documents_model');
        $this->documents_model->delete($id);
        
        $this->browse();
    }
    
    public function browse(){
        
     
        
        $this->load->model('documents_model');
        $documents = $this->documents_model->get_documents();
        $data['documents'] = $documents;
        
        $data['main_content'] = 'admin/documents/browse';
        $this->load->view('admin/layout/layout', $data);
    }

    public function submit() {
        
        $data = array();
        
        $this->load->helper('file');
        $this->load->model('documents_model');
        $document = new Document();

        //  $document = $this->documents_model->get_document();

        $image_name = $this->input->post('featured_image_hidden');
        $file_name = $this->input->post('featured_file_hidden');
        $id = $this->input->post('id');
        $image_changed = $file_changed = 0;



        if (isset($image_name) and strlen($image_name)) {
            $document->image_name = $image_name;
        } else {
            $document->image_name = 'documents_featured_image.jpg';
        }


        if (isset($file_name) and strlen($file_name)) {
         
            $document->file_name = $file_name;
        }

 
            if ($id) {
                $document->id = $id;
                if($document->image_name != $image_name or $document->file_name != $file_name){
                    $this->documents_model->update_document($document);
                    $msg = $data['msg'] = 'Документот е успешно изменет';
                }else{
                    $msg = $data['msg'] = 'Не беа направени никакви измени';
                }
                
            } else if($document->file_name) {
                $document->id = $this->documents_model->insert_document($document);
                $msg = $data['msg'] = 'Документот е успешно зачуван';
            }else{
                $msg = $data['msg'] = 'Документот не беше зачуван';
            }

            
   
        $this->index($document->id,$data);
    }

    public function upload_image() {
        $status = "";
        $msg = "";
        $file_element_name = 'featured_image';




        if ($status != "error") {
            $config['upload_path'] = /* base_url() . */'public/uploaded/documents/document_images/';
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

    public function upload_file() {
        $status = "";
        $msg = "";
        $file_element_name = 'featured_file';




        if ($status != "error") {
            $config['upload_path'] = /* base_url() . */'public/uploaded/documents/';
              $config['allowed_types'] = '*';
            $config['max_size'] = 1024 * 20;
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

}

?>
