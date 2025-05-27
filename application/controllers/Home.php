<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Home extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('home_model');
    }

    public function index()
    {
        $setifikat_tanah = $this->home_model->get_data_all();
        $data = [
            'setifikat_tanah'    => $setifikat_tanah
        ];
        $this->load->view('home/index', $data);
    }

    function error_404()
    {
        $this->load->view('template/404');
    }
}
