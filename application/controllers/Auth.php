<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('auth_model');
  }

  public function index()
  {
    if ($this->session->userdata('_LOGGED')) {
      redirect('/');
    }

    $this->form_validation->set_rules('username', 'Username', 'required|trim');
    $this->form_validation->set_rules('password', 'Password', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->load->view('login');
    } else {
      $this->_verify();
    }
  }

  private function _verify()
  {
    $username = htmlspecialchars(strtolower(trim($this->input->post('username', true))));

    $password = $this->input->post('password');

    $user = $this->auth_model->verifyUser($username);

    if ($user) {
      if (password_verify($password, $user->password)) {
        $data = [
          'id' => $user->id,
          'name' => $user->name,
          'username' => $user->username,
          'role' => $user->role,
          '_LOGGED' => true
        ];

        $this->session->set_userdata($data);
        redirect('/');
      } else {
        $alert =  '<div class="alert mt-2 alert-danger alert-dismissible show fade">
                    <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                        <span>×</span>
                        </button>
                        <em>Username / password salah</em>.
                    </div>
                </div>';
        $this->session->set_flashdata('message', $alert);
        redirect('login');
      }
    } else {
      $alert =  '<div class="alert mt-2 alert-danger alert-dismissible show fade">
                    <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                        <span>×</span>
                        </button>
                        <em>Username / password salah</em>.
                    </div>
                </div>';
      $this->session->set_flashdata('message', $alert);
      redirect('login');
    }
  }

  function register()
  {
    $this->form_validation->set_rules('username', 'Username', 'required|trim');
    $this->form_validation->set_rules('password', 'Password', 'required|trim');
    $this->form_validation->set_rules('name', 'name', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->load->view('register');
    } else {

      // Ambil data dari form
      $username = htmlspecialchars(strtolower(trim($this->input->post('username', true))));
      $password = $this->input->post('password');
      $name = htmlspecialchars(trim($this->input->post('name', true)));

      // Hash password
      $hashed_password = password_hash($password, PASSWORD_DEFAULT);

      // Siapkan data untuk insert
      $data = [
        'username' => $username,
        'password' => $hashed_password,
        'nama' => $name,
        'role' => 'USER' // atau sesuaikan dengan kebutuhan
      ];

      // Insert ke tabel users lewat model
      $this->db->insert('users', $data);

      // Set flashdata sukses
      $alert =  '<div class="alert mt-2 alert-success alert-dismissible show fade">
                  <div class="alert-body">
                    <button class="close" data-dismiss="alert">
                    <span>×</span>
                    </button>
                    <em>Registrasi berhasil, silakan login.</em>
                  </div>
                </div>';
      $this->session->set_flashdata('message', $alert);
      redirect('login');
    }
  }

  public function logout()
  {
    $this->session->unset_userdata('id');
    $this->session->unset_userdata('name');
    $this->session->unset_userdata('username');
    $this->session->unset_userdata('role');
    $this->session->unset_userdata('_LOGGED');
    // $this->session->sess_destroy();
    $alert =  '<div class="alert mt-2 alert-success alert-dismissible show fade">
                    <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                        <span>×</span>
                        </button>
                        <em>You have been logout</em>.
                    </div>
                </div>';
    $this->session->set_flashdata('message', $alert);
    redirect('login');
  }
}
