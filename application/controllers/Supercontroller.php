<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Supercontroller extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('allModel', 'AllModel');
        is_logged_in();
    }

    public function index()
    {

        $data['data'] = $this->AllModel->all();
        // var_dump($data['data']);
        // die;
        $value = $this->AllModel->all();
        $data['title'] = "Dashboard";
        $data['judul'] = "Admin Page";
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        // $data['menu'] = $this->db->get_where('user_sub_menu', ['role_id' => $this->session->userdata('role_id')])->row_array();
        $this->load->view('komponen/header', $data);
        $this->load->view('komponen/sidebar', $data);
        $this->load->view('superadmin/index', $data);
    }

    // public function edit($koperasiId, $anggotaId, $ratId, $karyawanId, $manajerId, $modalId, $userId)
    public function edit($id)
    {
        $data['title'] = 'Ubah data';
        $data['judul'] = "Admin Page";
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();

        $this->load->view('komponen/header', $data);
        $this->load->view('komponen/sidebar', $data);
        $this->load->view('superadmin/edit', $data);
    }

    public function delete($id)
    {
        // $this->db->delete('')
    }
}
