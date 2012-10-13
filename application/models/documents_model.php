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
    
    public function get_document()
    {
        $this->db->where('lang', Lang::$lang);
        $result = $this->db->get('uploaded_documents');
        
        
        $document =  $result->result();
        if(count($document) == 1)
        {
            return $document[0];
        }
        return $document;
    }
    
    public function update_document($data)
    {
        $this->db->where('id',$data->id);
        $this->db->where('lang', Lang::$lang);
        
        $this->db->update('uploaded_documents', $data);
    }
}

?>
