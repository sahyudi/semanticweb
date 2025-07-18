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

        <div class="container mt-5">
            <h2 class="mb-4">Edit Sertifikat Tanah</h2>
            <form action="<?= site_url('home/update/' . $sertifikat->id) ?>" method="post">
                <div class="row">

                    <div class="form-group col-md-6">
                        <label>NIB</label>
                        <input type="text" name="nib" class="form-control" value="<?= htmlspecialchars($sertifikat->nib) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Pemilik</label>
                        <input type="text" name="pemilik" class="form-control" value="<?= htmlspecialchars($sertifikat->pemilik) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Kelurahan</label>
                        <input type="text" name="kelurahan" class="form-control" value="<?= htmlspecialchars($sertifikat->kelurahan) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Kecamatan</label>
                        <input type="text" name="kecamatan" class="form-control" value="<?= htmlspecialchars($sertifikat->kecamatan) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Kota</label>
                        <input type="text" name="kota" class="form-control" value="<?= htmlspecialchars($sertifikat->kota) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Alamat</label>
                        <input type="text" name="alamat" class="form-control" value="<?= htmlspecialchars($sertifikat->alamat) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Luas</label>
                        <input type="number" name="luas" class="form-control" value="<?= htmlspecialchars($sertifikat->luas) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Status</label>
                        <input type="text" name="status" class="form-control" value="<?= htmlspecialchars($sertifikat->status) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Tanggal Terbit</label>
                        <input type="date" name="tgl_terbit" class="form-control" value="<?= htmlspecialchars($sertifikat->tgl_terbit) ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Tanggal Jatuh Tempo</label>
                        <input type="date" name="tgl_jth_tempo" class="form-control" value="<?= htmlspecialchars($sertifikat->tgl_jth_tempo) ?>" required>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                <a href="<?= site_url('home') ?>" class="btn btn-secondary">Batal</a>
            </form>
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

</body>

</html>