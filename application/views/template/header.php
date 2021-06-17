<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Projects</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">

  <!-- jQuery -->
  <script src="<?php echo base_url() ?>assets/plugins/jquery/jquery.min.js"></script>
</head>

<body class="sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed sidebar-collapse">
  <!-- Site wrapper -->
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url('login/hapussesi') ?>">
              <i class="fas fa-power-off  "></i>
            </a>
          </li>
        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4" style="background-color: #2c51f5;">
      <!-- Brand Logo -->
      <a href="<?php echo base_url('C_dashboarduser') ?>" class="brand-link" style="background-color: #2c51f5;">
        <img src="<?php echo base_url() ?>assets/web/images/cv1.jfif" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">CV DWI TUNGGAL </span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img src="<?php echo base_url() ?>assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
          </div>
          <div class="info">
            <a href="#" class="d-block"><?php echo ucfirst($this->session->userdata('sess_username')) ?></a>
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

            <li class="nav-item has-treeview">
              <a href="<?php echo site_url('C_dashboard/index') ?>" class="nav-link">
                <i class="nav-icon fas fa-address-book"></i>
                <p>
                  Dashboard
                </p>
              </a>
            </li>



            <li class="nav-item has-treeview">
              <a href="<?php echo site_url('C_kategoribarang/index') ?>" class="nav-link">

                <i class="nav-icon fas fa-address-book"></i>
                <p>
                  Kategori
                </p>
              </a>
            </li>



            <li class="nav-item has-treeview">
              <a href="<?php echo site_url('C_stockopname/index') ?>" class="nav-link">
                <i class="nav-icon fas fa-fw fa-file-invoice"></i>
                <p>
                  Stok Opname
                </p>
              </a>
            </li>

            <li class="nav-item has-treeview">
              <a href="<?php echo site_url('C_databarang/index') ?>" class="nav-link">
                <i class="nav-icon fas fa-book"></i>
                <p>
                  Data Barang
                </p>
              </a>
            </li>

            <?php if ($this->session->userdata('sess_level') != "admin") { ?>
              <li class="nav-item has-treeview">
                <a href="<?php echo site_url('C_datapegawai/index') ?>" class="nav-link">
                  <i class="nav-icon fas fa-fw fa-user"></i>
                  <p>
                    Data Pegawai
                  </p>
                </a>
              </li>
            <?php } ?>

            <li class="nav-item has-treeview">
              <a href="<?php echo site_url('C_kodebarang/index') ?>" class="nav-link">
                <i class="nav-icon fas fa-fw fa-box"></i>
                <p>
                  Kode Barang
                </p>
              </a>
            </li>


            <?php if ($this->session->userdata('sess_level') != "admin") { ?>
              <li class="nav-item has-treeview">
                <a href="<?php echo site_url('C_pelaporan/index') ?>" class="nav-link">
                  <i class="nav-icon far fa-id-card"></i>
                  <p>
                    Pelaporan
                  </p>
                </a>
              </li>


              <li class="nav-item has-treeview">
                <a href="<?php echo site_url('C_penjadwalan/index') ?>" class="nav-link">
                  <i class="nav-icon far fa-id-card"></i>
                  <p>
                    Penjadwalan
                  </p>
                </a>
              </li>

              <li class="nav-item has-treeview">
                <a href="<?php echo site_url('C_alat/index') ?>" class="nav-link">
                  <i class="nav-icon fas fa-home"></i>
                  <p>

                    Alat'e kantor


                  </p>
                </a>
              </li>

              <li class="nav-item has-treeview">
                <a href="<?php echo site_url('C_distributor/index') ?>" class="nav-link">
                  <i class="nav-icon fas fa-fw fa-people-carry"></i>
                  <p>

                    Distributor


                  </p>
                </a>
              </li>

              <li class="nav-item has-treeview">
                <a href="<?php echo site_url('C_faktur/index') ?>" class="nav-link">
                  <i class="nav-icon fas fa-fw fa-people-carry"></i>
                  <p>

                    Faktur


                  </p>
                </a>
              </li>



            <?php } ?>
            <?php if ($this->session->userdata('sess_level') == "admin") { ?>
              <li class="nav-item has-treeview">
                <a href="<?php echo site_url('C_tugaspegawai/index') ?>" class="nav-link">
                  <i class="nav-icon fas fa-fw fa-people-carry"></i>
                  <p>

                    Tugas Pegawai


                  </p>
                </a>
              </li>
            <?php } ?>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>