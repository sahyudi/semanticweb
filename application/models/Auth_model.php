<?php

class Auth_model extends CI_Model
{

    public $users = 'users';


    function getUsers()
    {
        $this->db->select('*');
        $result = $this->db->get($this->users . ' U')->result();
        return $result;
    }

    function getUserData($id)
    {
        $this->db->select('*');
        $this->db->where('id', $id);
        $result = $this->db->get($this->users . ' U')->row();
        return $result;
    }

    function verifyUser($username)
    {
        $this->db->select('*');
        $this->db->where('U.username', $username);
        $result = $this->db->get($this->users . ' U')->row();
        return $result;
    }

    function lastLogin($username)
    {
        $this->db->set('last_login', 'current_timestamp()', false);
        $this->db->where('username', $username);
        return $this->db->update($this->users, null, null);
    }
}
