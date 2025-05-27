<?php
defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Model
 * 
 * @package     CodeIgniter
 * @category    Model
 * @author      Sahyudi
 * @email       sahyudi.dev@gmail.com
 * @remarks     Auto-generated CRUD
 */

class Home_model extends CI_Model
{

    protected $sertipikat_tanah = 'sertipikat_tanah';

    function get_data_all()
    {
        $this->db->select('*');
        $this->db->from($this->sertipikat_tanah);
        $query = $this->db->get();
        return $query->result();
    }
}
