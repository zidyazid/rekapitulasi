<?php
defined('BASEPATH') or exit('No direct script access allowed');

class allModel extends CI_Model
{
    public function all()
    {
        $query = $this->db->query("SELECT koperasi.*, anggota.*, rat.*, karyawan.*, manajer.*, modal.*, user.* FROM anggota
        JOIN koperasi ON anggota.id_anggota = koperasi.id_jumlah
        JOIN user ON anggota.id_anggota = user.id
        JOIN karyawan ON anggota.id_anggota = karyawan.id_karyawan
        JOIN manajer ON anggota.id_anggota = manajer.id_manajer
        JOIN modal ON anggota.id_anggota = modal.id_modal
        JOIN rat ON anggota.id_anggota = rat.id_rat
        ");
        return $query->result_array();
    }

    public function data_koperasi_per_user($id)
    {
        $query = $this->db->query("SELECT koperasi.*, anggota.*, rat.*, karyawan.*, manajer.*, modal.*, user.* FROM anggota
        JOIN koperasi ON anggota.id_anggota = koperasi.id_jumlah
        JOIN user ON anggota.id_anggota = user.id
        JOIN karyawan ON anggota.id_anggota = karyawan.id_karyawan
        JOIN manajer ON anggota.id_anggota = manajer.id_manajer
        JOIN modal ON anggota.id_anggota = modal.id_modal
        JOIN rat ON anggota.id_anggota = rat.id_rat
        WHERE user.id = $id
        ");
        return $query->result_array();
    }

    public function total_koperasi()
    {
        $this->db->select_sum('jumlah_tidakaktif');
        $this->db->select_sum('jumlah_aktif');
        $query = $this->db->get('koperasi');

        return $query->result_array();
    }

    public function total_anggota()
    {
        $this->db->select_sum('anggota_lakilaki');
        $this->db->select_sum('anggota_perempuan');
        $query = $this->db->get('anggota');

        return $query->result_array();
    }

    public function total_manajer()
    {
        $this->db->select_sum('manajer_lakilaki');
        $this->db->select_sum('manajer_perempuan');
        $query = $this->db->get('manajer');

        return $query->result_array();
    }
    public function total_rat()
    {
        $this->db->select_sum('rat');
        $query = $this->db->get('rat');

        return $query->result_array();
    }
    public function total_karyawan()
    {
        $this->db->select_sum('karyawan_lakilaki');
        $this->db->select_sum('karyawan_perempuan');
        $query = $this->db->get('karyawan');

        return $query->result_array();
    }
    public function total_modal()
    {
        $this->db->select_sum('modal_sendiri');
        $this->db->select_sum('modal_luar');
        $this->db->select_sum('volume_usaha');
        $this->db->select_sum('SHU');
        $query = $this->db->get('modal');

        return $query->result_array();
    }
}
