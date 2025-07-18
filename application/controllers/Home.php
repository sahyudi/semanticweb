<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Home extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('_LOGGED')) {
            $alert =  '<div class="alert mt-2 alert-danger alert-dismissible show fade">
                            <div class="alert-body">
                                <button class="close" data-dismiss="alert">
                                <span>×</span>
                                </button>
                                <em>Silakan login terlebih dahulu</em>.
                            </div>
                        </div>';
            $this->session->set_flashdata('message', $alert);
            redirect('login');
        }
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


    public function add()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('nib', 'NIB', 'required');
        $this->form_validation->set_rules('pemilik', 'Pemilik', 'required');
        $this->form_validation->set_rules('kelurahan', 'Kelurahan', 'required');
        $this->form_validation->set_rules('kecamatan', 'Kecamatan', 'required');
        $this->form_validation->set_rules('kota', 'Kota', 'required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        $this->form_validation->set_rules('luas', 'Luas', 'required|numeric');
        $this->form_validation->set_rules('status', 'Status', 'required');
        $this->form_validation->set_rules('tgl_terbit', 'Tanggal Terbit', 'required');
        $this->form_validation->set_rules('tgl_jth_tempo', 'Tanggal Jatuh Tempo', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('home/add');
        } else {
            $update_data = [
                'nib'           => $this->input->post('nib', TRUE),
                'pemilik'       => $this->input->post('pemilik', TRUE),
                'kelurahan'     => $this->input->post('kelurahan', TRUE),
                'kecamatan'     => $this->input->post('kecamatan', TRUE),
                'kota'          => $this->input->post('kota', TRUE),
                'alamat'        => $this->input->post('alamat', TRUE),
                'luas'          => $this->input->post('luas', TRUE),
                'status'        => $this->input->post('status', TRUE),
                'tgl_terbit'    => $this->input->post('tgl_terbit', TRUE),
                'tgl_jth_tempo' => $this->input->post('tgl_jth_tempo', TRUE),
            ];

            $this->db->insert('sertipikat_tanah', $update_data);

            $alert = '<div class="alert mt-2 alert-success alert-dismissible show fade">
                        <div class="alert-body">
                            <button class="close" data-dismiss="alert">
                            <span>×</span>
                            </button>
                            <em>Data sertifikat berhasil ditambahkan.</em>
                        </div>
                      </div>';
            $this->session->set_flashdata('message', $alert);
            redirect('home');
        }
    }

    public function update($id)
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('nib', 'NIB', 'required');
        $this->form_validation->set_rules('pemilik', 'Pemilik', 'required');
        $this->form_validation->set_rules('kelurahan', 'Kelurahan', 'required');
        $this->form_validation->set_rules('kecamatan', 'Kecamatan', 'required');
        $this->form_validation->set_rules('kota', 'Kota', 'required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        $this->form_validation->set_rules('luas', 'Luas', 'required|numeric');
        $this->form_validation->set_rules('status', 'Status', 'required');
        $this->form_validation->set_rules('tgl_terbit', 'Tanggal Terbit', 'required');
        $this->form_validation->set_rules('tgl_jth_tempo', 'Tanggal Jatuh Tempo', 'required');

        if ($this->form_validation->run() == FALSE) {
            $data['sertifikat'] = $this->home_model->get_data_detail($id);
            $this->load->view('home/edit', $data);
        } else {
            $update_data = [
                'nib'           => $this->input->post('nib', TRUE),
                'pemilik'       => $this->input->post('pemilik', TRUE),
                'kelurahan'     => $this->input->post('kelurahan', TRUE),
                'kecamatan'     => $this->input->post('kecamatan', TRUE),
                'kota'          => $this->input->post('kota', TRUE),
                'alamat'        => $this->input->post('alamat', TRUE),
                'luas'          => $this->input->post('luas', TRUE),
                'status'        => $this->input->post('status', TRUE),
                'tgl_terbit'    => $this->input->post('tgl_terbit', TRUE),
                'tgl_jth_tempo' => $this->input->post('tgl_jth_tempo', TRUE),
            ];

            $this->db->update('sertipikat_tanah', $update_data, ['id' => $id]);

            $alert = '<div class="alert mt-2 alert-success alert-dismissible show fade">
                        <div class="alert-body">
                            <button class="close" data-dismiss="alert">
                            <span>×</span>
                            </button>
                            <em>Data sertifikat berhasil diperbarui.</em>
                        </div>
                      </div>';
            $this->session->set_flashdata('message', $alert);
            redirect('home');
        }
    }

    public function delete($id)
    {
        $this->db->delete('sertipikat_tanah', ['id' => $id]);
        $alert = '<div class="alert mt-2 alert-success alert-dismissible show fade">
                    <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                        <span>×</span>
                        </button>
                        <em>Data sertifikat berhasil dihapus.</em>
                    </div>
                  </div>';
        $this->session->set_flashdata('message', $alert);
        redirect('home');
    }

    function error_404()
    {
        $this->load->view('template/404');
    }
}
