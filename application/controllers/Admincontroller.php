<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admincontroller extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('allModel', 'AllModel');
        $this->load->library('form_validation');
        is_logged_in();
    }

    public function index()
    {
        $userlogin = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $data["koperasi_login"] = $this->AllModel->data_koperasi_per_user($userlogin["id"]);

        $value1 = $this->AllModel->total_koperasi();
        $value2 = $this->AllModel->total_anggota();
        $value3 = $this->AllModel->total_manajer();
        $value4 = $this->AllModel->total_rat();
        $value5 = $this->AllModel->total_karyawan();
        $value6 = $this->AllModel->total_modal();

        $total_koperasi = $value1[0]['jumlah_aktif'] + $value1[0]['jumlah_tidakaktif'];
        $total_anggota = $value2[0]['anggota_lakilaki'] + $value2[0]['anggota_perempuan'];
        $total_manajer = $value3[0]['manajer_lakilaki'] + $value3[0]['manajer_perempuan'];
        $total_rat = $value4[0]['rat'];
        $total_karyawan = $value5[0]['karyawan_lakilaki'] + $value5[0]['karyawan_perempuan'];
        $total_modal_sendiri = $value6[0]['modal_sendiri'];
        $total_modal_luar = $value6[0]['modal_luar'];
        $total_volume_usaha = $value6[0]['volume_usaha'];
        $total_shu = $value6[0]['SHU'];


        $data['total_koperasi'] = $total_koperasi;
        $data['total_anggota'] = $total_anggota;
        $data['total_manajer'] = $total_manajer;
        $data['total_rat'] = $total_rat;
        $data['total_karyawan'] = $total_karyawan;
        $data['total_modal_sendiri'] = $total_modal_sendiri;
        $data['total_modal_luar'] = $total_modal_luar;
        $data['total_volume_usaha'] = $total_volume_usaha;
        $data['total_shu'] = $total_shu;

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
        $this->load->view('admin/index', $data);
        // $this->load->view('komponen/footer', $data);
    }

    public function edit()
    {
        $userlogin = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $data["koperasi_login"] = $this->AllModel->data_koperasi_per_user($userlogin["id"]);

        $data['title'] = "Dashboard";
        $data['judul'] = "Edit Data Page";
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        // $data['menu'] = $this->db->get_where('user_sub_menu', ['role_id' => $this->session->userdata('role_id')])->row_array();
        $this->load->view('komponen/header', $data);
        $this->load->view('komponen/sidebar', $data);
        // $this->load->view('komponen/topnav', $data);
        $this->load->view('admin/edit', $data);
        // $this->load->view('komponen/footer', $data);
    }

    public function update_data_koperasi($id)
    {
        $this->form_validation->set_rules('jumlah_aktif', 'Jumlah_aktif', 'required');
        $this->form_validation->set_rules('jumlah_tidakaktif', 'Jumlah_tidakaktif', 'required');

        $jumlahAktif = $this->input->post('jumlah_aktif');
        $jumlahTidakAktif = $this->input->post('jumlah_tidakaktif');

        if ($this->form_validation->run() == false) {
            echo 'Gagal Mengupdate Data';
        } else {

            $this->db->set('jumlah_aktif', $jumlahAktif);
            $this->db->set('jumlah_tidakaktif', $jumlahTidakAktif);
            $this->db->where('id_jumlah', $id);
            $this->db->update('koperasi');

            return  redirect('/Admincontroller/index');
        }
    }

    public function update_data_anggota($id)
    {
        $this->form_validation->set_rules('anggota_lakilaki', 'Anggota_lakilaki', 'required');
        $this->form_validation->set_rules('anggota_perempuan', 'Anggota_perempuan', 'required');

        $anggotaLakiLaki = $this->input->post('anggota_lakilaki');
        $anggotaPerempuan = $this->input->post('anggota_perempuan');

        if ($this->form_validation->run() == false) {
            echo 'Gagal Mengupdate Data';
        } else {

            $this->db->set('anggota_lakilaki', $anggotaLakiLaki);
            $this->db->set('anggota_perempuan', $anggotaPerempuan);
            $this->db->where('id_anggota', $id);
            $this->db->update('anggota');

            return  redirect('/Admincontroller/index');
        }
    }
}
