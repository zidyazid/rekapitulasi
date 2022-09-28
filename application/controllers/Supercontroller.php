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
        $value = $this->AllModel->all();
        // var_dump($value);
        $data['title'] = "Dashboard";
        $data['judul'] = "Admin Page";
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        // $data['menu'] = $this->db->get_where('user_sub_menu', ['role_id' => $this->session->userdata('role_id')])->row_array();
        $this->load->view('komponen/header', $data);
        $this->load->view('komponen/sidebar', $data);
        // $this->load->view('komponen/topnav', $data);
        $this->load->view('superadmin/index', $data);
        // $this->load->view('komponen/footer', $data);

    }
}
