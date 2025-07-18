<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Praktikum Pemograman Kompetitif</title>
    <!-- Bootstrap 4 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: #f8f9fa;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
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

        .login-row {
            min-height: 80vh;
            align-items: center;
        }

        .login-container {
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 4px 24px rgba(0, 0, 0, 0.08);
            padding: 40px 32px 32px 32px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row justify-content-center login-row">
            <div class="col-12 col-md-8 col-lg-6">
                <div class="login-container">
                    <h2 class="text-center mb-4">Register</h2>
                    <?= $this->session->flashdata('message'); ?>
                    <form method="post" action="<?= base_url('auth/register') ?>">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="username" name="username" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                        <a href="<?= base_url('login') ?>" class="btn btn-secondary btn-block">Kembali ke Login</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        &copy; <?= date('Y') ?> Praktikum Pemograman Kompetitif &mdash; Ditya Endah Utari, Muhamad Sahyudi, Febriend Roni Sianipar
    </footer>
    <!-- Bootstrap 4 JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>