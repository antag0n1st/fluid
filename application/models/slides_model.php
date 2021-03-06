<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * @property CI_DB_active_record $db
 */
class Slides_model extends CI_Model {
    
    function __construct() {
        parent::__construct();
        $this->load->database();
    }
    
    
    public function get_slides($options = array(),$limit = 0, $offset = 0, $order_by = 'order_index ASC')
    {
        //$options = $this->_default(array('status <>' => '0'), $options);
        
        foreach($options as $key => $option)
        {
            $this->db->where($key, $option);
        }
        $this->db->where('lang', Lang::$lang);
        
        $this->db->from('slides');
        $this->db->select('slides_id,
                           date_created,
                           title,
                           description,
                           link,
                           image,
                           order_index');
        
        if($limit){
            $this->db->limit($limit);
        }
        if($offset){
            $this->db->offset($offset);
        }
        if($order_by){
            $this->db->order_by($order_by);
        }
        
        
        $result = $this->db->get();
        
        return $result->result();
    }
    
    public function get_max_order_index()
    {
        $this->db->select_max('order_index','m');
        $this->db->where('lang', Lang::$lang);
        $result = $this->db->get('slides');
        
        if ($result->num_rows() > 0)
        {
            $res2 = $result->result_array();
            $max  = $res2[0]['m'];
        }
        return $max;
    }
    
    public function insert_slide($data){
        $data->lang = Lang::$lang;
        $this->db->insert('slides', $data);
        return $this->db->insert_id();
    }
    
    public function update_slide($data){
        $this->db->where('slides_id', $data->slides_id);
        $this->db->where('lang', Lang::$lang);
        $this->db->update('slides',$data);
    }
    
    public function delete_slide($slide_id){
        $this->db->where('slides_id', $slide_id);
        $this->db->where('lang', Lang::$lang);
        $this->db->delete('slides');
    }
}

?>
