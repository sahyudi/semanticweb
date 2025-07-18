<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Praktikum Pemograman Kompetitif</title>
    <!-- Bootstrap 4 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <style>
        body {
            background: #f8f9fa;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .main-content {
            flex: 1 0 auto;
            margin: 40px auto 0 auto;
            width: 95vw;
            max-width: 1800px;
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 4px 24px rgba(0, 0, 0, 0.08);
            padding: 40px 32px 32px 32px;
        }

        .column-filter {
            width: 100%;
            padding: 0.375rem 0.75rem;
            margin-bottom: 0.5rem;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            font-size: 0.95rem;
        }

        th,
        td {
            vertical-align: middle !important;
            white-space: nowrap;
        }

        .table thead th {
            background: #343a40;
            color: #fff;
            font-weight: 600;
            text-align: center;
        }

        .footer {
            flex-shrink: 0;
            background: #343a40;
            color: #fff;
            text-align: center;
            padding: 18px 0 12px 0;
            margin-top: 40px;
            letter-spacing: 0.5px;
        }

        @media (max-width: 1200px) {
            .main-content {
                padding: 24px 8px 16px 8px;
            }
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Sertipikat Tanah</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link" href="#">Beranda</a></li>
                <li class="nav-item"><a class="nav-link" href="<?= base_url('logout') ?>">Logout</a></li>
            </ul>
        </div>
    </nav>

    <div class="main-content">
        <h1 class="text-center mb-2">DATA SERTIPIKAT TANAH</h1>
        <!-- <h5 class="text-center mb-3 font-weight-normal" style="color:#666;">By:</h5> -->
        <p class="list-unstyled text-center mb-4" style="font-size:1.1rem;">
            Ditya Endah Utari, Muhamad Sahyudi, Febriend Roni Sianipar
        </p>
        <?= $this->session->flashdata('message'); ?>
        <?php if ($this->session->userdata('role') == 'ADMIN') { ?>
            <div class="mb-3 text-right">
                <a href="<?= site_url('home/add') ?>" class="btn btn-success">
                    <i class="fa fa-plus"></i> Tambah Data
                </a>
            </div>
        <?php } ?>
        <div class="table-responsive">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>NIB</th>
                        <th>Pemilik</th>
                        <th>Kelurahan</th>
                        <th>Kecamatan</th>
                        <th>Kota</th>
                        <th>Alamat</th>
                        <th>Luas</th>
                        <th>Status</th>
                        <th>Tanggal Terbit</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Aksi</th>
                    </tr>
                    <tr>
                        <th></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari NIB"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Pemilik"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Kelurahan"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Kecamatan"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Kota"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Alamat"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Luas"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Status"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Tanggal Terbit"></th>
                        <th><input type="text" class="form-control column-filter" placeholder="Cari Tanggal Jatuh Tempo"></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    foreach ($setifikat_tanah as $key => $value) {
                        echo "<tr>";
                        echo "<td class='text-center'>" . $no++ . "</td>";
                        echo "<td>" . htmlspecialchars($value->nib) . "</td>";
                        echo "<td>" . htmlspecialchars($value->pemilik) . "</td>";
                        echo "<td>" . htmlspecialchars($value->kelurahan) . "</td>";
                        echo "<td>" . htmlspecialchars($value->kecamatan) . "</td>";
                        echo "<td>" . htmlspecialchars($value->kota) . "</td>";
                        echo "<td>" . htmlspecialchars($value->alamat) . "</td>";
                        echo "<td class='text-right'>" . htmlspecialchars($value->luas) . "</td>";
                        echo "<td>" . htmlspecialchars($value->status) . "</td>";
                        echo "<td>" . htmlspecialchars($value->tgl_terbit) . "</td>";
                        echo "<td>" . htmlspecialchars($value->tgl_jth_tempo) . "</td>";
                        if ($this->session->userdata('role') == 'ADMIN') {
                            echo "<td class='text-center'>
                                <a href='" . site_url('home/update/' . $value->id) . "' class='btn btn-sm btn-primary'>
                                    <i class='fa fa-edit'></i> Edit
                                </a>
                                |
                                <a href='" . site_url('home/delete/' . $value->id) . "' class='btn btn-sm btn-danger'>
                                    <i class='fa fa-trash'></i> Hapus
                                </a>
                              </td>";
                        } else {
                            echo "<td class='text-center'>&nbsp;</td>";
                        }
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
    <footer class="footer">
        &copy; <?= date('Y') ?> Praktikum Pemograman Kompetitif &mdash; Ditya Endah Utari, Muhamad Sahyudi, Febriend Roni Sianipar
    </footer>

    <!-- jQuery, Bootstrap 4 JS, DataTables JS, FontAwesome -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        $(document).ready(function() {
            var table = $('#example').DataTable({
                columns: [{
                        width: "50px"
                    }, // No
                    {
                        width: "180px"
                    }, // NIB
                    {
                        width: "180px"
                    }, // Pemilik
                    {
                        width: "150px"
                    }, // Kelurahan
                    {
                        width: "150px"
                    }, // Kecamatan
                    {
                        width: "150px"
                    }, // Kota
                    {
                        width: "250px"
                    }, // Alamat
                    {
                        width: "100px"
                    }, // Luas
                    {
                        width: "120px"
                    }, // Status
                    {
                        width: "150px"
                    }, // Tanggal Terbit
                    {
                        width: "170px"
                    }, // Tanggal Jatuh Tempo
                    {
                        width: "120px"
                    } // Aksi
                ],
                autoWidth: false,
                scrollX: true,
                ordering: false,
                initComplete: function() {
                    this.api().columns().every(function() {
                        var column = this;
                        $("input", column.header()).on("keyup change clear", function() {
                            if (column.search() !== this.value) {
                                column.search(this.value).draw();
                            }
                        });
                    });
                }
            });
        });
    </script>
</body>

</html>