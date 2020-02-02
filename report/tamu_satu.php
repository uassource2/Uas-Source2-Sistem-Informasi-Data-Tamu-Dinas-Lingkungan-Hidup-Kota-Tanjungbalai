<!DOCTYPE html>
<html>
    <head>
        <title>Cetak Data Tamu</title>
        <link href="../Assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>  
    <body onload="print()">
        <!--Menampilkan data detail arsip-->
        <?php
        include '../config/koneksi.php';
        $sql = "SELECT * FROM tamu WHERE id='" . $_GET ['id'] . "'";
        //proses query ke database
        $query = mysqli_query($koneksi, $sql) or die("SQL Detail error");
        //Merubaha data hasil query kedalam bentuk array
        $data = mysqli_fetch_array($query);
        ?>   

        <div class="container">
            <div class='row'>
                <div class="col-sm-12">
                    <!--dalam tabel--->
                    <div class="text-center">
                        <h2>Sistem Informasi Buku Tamu Kota Tanjung Balai</h2>
                        <h4>Sirantau, Jl. Gaharu <br> Datuk Bandar, Kota Tanjung Balai, Sumatera Utara 21332</h4>
                        <hr>
                        <h3>DATA TAMU</h3>
                        <table class="table table-bordered table-striped table-hover"> 
                            <tbody>
								<tr>
                                    <td>Nama Pengunjung</td> <td><?= $data['nama_pengunjung'] ?></td>
                                </tr>
                                <tr>
                                    <td width="200">Tujuan Kedatangan</td> <td><?= $data['tujuan_kedatangan'] ?></td>
                                </tr>
                                <tr>
                                    <td>Alamat</td> <td><?= $data['alamat'] ?></td>
                                </tr>
								<tr>
                                    <td>Tanggal Masuk</td> <td><?= $data['tgl_masuk'] ?></td>
                                </tr>
								<tr>
                                    <td>Perihal</td> <td><?= $data['perihal'] ?></td>
                                </tr>
								
                            </tbody>
                            <tfoot> 
                                <tr>
                                    <td colspan="6" class="text-right">
                                        Tanjung Balai  <?= date("d-m-Y") ?>
                                        <br><br><br><br>
                                        <u>Kabag S.Kom<strong></u><br>
                                        NIP.10287129141###
                                    </td>
								</tr>
							</tfoot> 
                        </table>
                    </div>
                </div>
            </div>
    </body>
</html>