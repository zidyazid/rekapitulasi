  <!-- Main content -->
  <div class="main-content" id="panel">
    <!-- Topnav -->
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
      <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Search form -->

          <!-- Navbar links -->
          <ul class="navbar-nav align-items-center  ml-md-auto ">
            <li class="nav-item d-xl-none">
              <!-- Sidenav toggler -->
              <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin" data-target="#sidenav-main">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </div>
            </li>
            <li class="nav-item d-sm-none">
              <a class="nav-link" href="#" data-action="search-show" data-target="#navbar-search-main">
                <i class="ni ni-zoom-split-in"></i>
              </a>
            </li>
            <li class="nav-item dropdown">
              <div class="dropdown-menu dropdown-menu-xl  dropdown-menu-right  py-0 overflow-hidden">
                <!-- Dropdown header -->
                <div class="px-3 py-3">
                  <h6 class="text-sm text-muted m-0">You have <strong class="text-primary">13</strong> notifications.</h6>
                </div>
                <!-- List group -->
                >
                <!-- View all -->
                <a href="#!" class="dropdown-item text-center text-primary font-weight-bold py-3">View all</a>
              </div>
            </li>

          </ul>
          <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
            <li class="nav-item dropdown">
              <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="media align-items-center">
                  <span class="avatar avatar-sm rounded-circle">
                    <img alt="Image placeholder" src="../assets/img/theme/team-4.jpg">
                  </span>
                  <div class="media-body  ml-2  d-none d-lg-block">
                    <span class="mb-0 text-sm  font-weight-bold">John Snow</span>
                  </div>
                </div>
              </a>
              <div class="dropdown-menu  dropdown-menu-right ">
                <div class="dropdown-header noti-title">
                  <h6 class="text-overflow m-0">Welcome!</h6>
                </div>

                <div class="dropdown-divider"></div>
                <a href="#!" class="dropdown-item">
                  <i class="ni ni-user-run"></i>
                  <span>Logout</span>
                </a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page content -->
    <div class="container-fluid mt--6">
      <div class="row">
        <div class="col-xl-12">

          <table border="1" class="table mt-7 table-responsive">
            <tr>
              <th rowspan="2">No</th>
              <th rowspan="2">Kota / Kabupaten</th>
              <th colspan="3">Koperasi (Unit)</th>
              <th colspan="3">Anggota (Orang)</th>
              <th rowspan="2">RAT (Unit)</th>
              <th colspan="3">Manajer (Orang)</th>
              <th colspan="3">Karyawan (Orang)</th>
              <th rowspan="2">Modal Sendiri (Rp)</th>
              <th rowspan="2">Modal Luar (Rp)</th>
              <th rowspan="2">Volume Usaha (Rp)</th>
              <th rowspan="2">SHU (Rp)</th>
              <th colspan="2" rowspan="2">Action</th>
            </tr>
            <tr>
              <th>Jumlah</th>
              <th>Aktif</th>
              <th>Tidak Aktif</th>
              <th>Jumlah</th>
              <th>Laki-Laki</th>
              <th>Perempuan</th>
              <th>Jumlah</th>
              <th>Laki-Laki</th>
              <th>Perempuan</th>
              <th>Jumlah</th>
              <th>Laki-Laki</th>
              <th>Perempuan</th>



            </tr>
            <?php $no = 1; ?>
            <?php foreach ($data as $data) : ?>
              <?php $jumlah = $data["jumlah_aktif"] + $data["jumlah_tidakaktif"] ?>
              <?php $jumlahAnggota = $data["anggota_lakilaki"] + $data["anggota_perempuan"] ?>
              <?php $jumlahManajer = $data["manajer_lakilaki"] + $data["manajer_perempuan"] ?>
              <?php $jumlahKaryawan = $data["karyawan_lakilaki"] + $data["karyawan_perempuan"] ?>
              <tr>
                <td><?php echo $no++; ?></td>
                <td><?= $data["name"]; ?></td>
                <td><?= $jumlah; ?></td>
                <td><?= $data["jumlah_aktif"]; ?></td>
                <td><?= $data["jumlah_tidakaktif"]; ?></td>
                <td><?= $jumlahAnggota; ?></td>
                <td><?= $data["anggota_lakilaki"]; ?></td>
                <td><?= $data["anggota_perempuan"]; ?></td>
                <td><?= $data["rat"]; ?></td>
                <td><?= $jumlahManajer; ?></td>
                <td><?= $data["manajer_lakilaki"]; ?></td>
                <td><?= $data["manajer_perempuan"]; ?></td>
                <td><?= $jumlahKaryawan; ?></td>
                <td><?= $data["karyawan_lakilaki"]; ?></td>
                <td><?= $data["karyawan_perempuan"]; ?></td>
                <td><?= $data["modal_sendiri"]; ?></td>
                <td><?= $data["modal_luar"]; ?></td>
                <td><?= $data["volume_usaha"]; ?></td>
                <td><?= $data["SHU"]; ?></td>
                <td><a href="<?= base_url('/supercontroller/edit/' . $data["id"]) ?>" class="btn btn-warning btn-sm">Edit</a></td>
                <td><a href="<?= base_url('/supercontroller/delete/' . $data["id"]) ?>" class="btn btn-danger btn-sm">Delete</a></td>

              </tr>

            <?php endforeach; ?>
          </table>

          <!-- SELECT anggota.*, koperasi.*, karyawan.* FROM anggota
JOIN koperasi ON anggota.id_anggota = koperasi.id_jumlah
JOIN karyawan ON anggota.id_anggota = karyawan.id_karyawan -->




          <script src="<?= base_url(); ?>/assets/vendor/jquery/dist/jquery.min.js"></script>
          <script src="<?= base_url(); ?>/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
          <script src="<?= base_url(); ?>/assets/vendor/js-cookie/js.cookie.js"></script>
          <script src="<?= base_url(); ?>/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
          <script src="<?= base_url(); ?>/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
          <!-- Optional JS -->
          <script src="<?= base_url(); ?>/assets/vendor/chart.js/dist/Chart.min.js"></script>
          <script src="<?= base_url(); ?>/assets/vendor/chart.js/dist/Chart.extension.js"></script>
          <!-- Argon JS -->

          <script src="<?= base_url(); ?>/assets/js/argon.js?v=1.2.0"></script>
        </div>