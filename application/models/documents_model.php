<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * @property CI_DB_active_record $db
 */
class Documents_model extends CI_Model {
    function __construct() {
        parent::__construct();
        $this->load->database();
    }
    
    public function get_document($id)
    {
        $this->db->where('lang', Lang::$lang);
        $this->db->where('id', $id);
        $result = $this->db->get('uploaded_documents');
        
        
        $document =  $result->result();
        if(count($document) == 1)
        {
            return $document[0];
        }
        return $document;
    }
    
    
    
    public function get_documents($limit = 0){
       
        if($limit){
            $this->db->limit($limit);
        }
        
        $this->db->order_by('id','DESC');
        $this->db->where('lang', Lang::$lang);
        $result = $this->db->get('uploaded_documents');
        
        
        
        return  $result->result();
    }
    public function delete($id){
        $this->db->where('id', $id);
        $this->db->delete('uploaded_documents');
    }
    
    public function insert_document($data){
        
         $c  =   array(
            'id'    =>  null ,
            'file_name'             =>  $data->file_name,
            'image_name'             =>  $data->image_name,
            'date_created'   => TimeHelper::DateTimeAdjusted(),
            'lang'             => Lang::$lang ,
        );
        
        
        $this->db->insert('uploaded_documents', $c);
        return $this->db->insert_id();
        
    }
    
    public function update_document($data)
    {
        $this->db->where('id',$data->id);
        $this->db->where('lang', Lang::$lang);
        
        $this->db->update('uploaded_documents', $data);
    }
}

?>
