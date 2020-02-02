<!DOCTYPE html>
<html>
    <head>
        <title>Cetak Semua Data Tamu</title>
        <link href="../Assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>  
    <body onload="print()">
        <!--Menampilkan data detail arsip-->
        <?php
        include '../config/koneksi.php';
        ?>   

        <div class="container">
            <div class='row'>
                <div class="col-sm-12">
                    <!--dalam tabel--->
                    <div class="text-center">
                        <h2>Sistem Informasi Buku Tamu Kota Tanjung Balai</h2>
                        <h4>Sirantau, Jl. Gaharu <br> Datuk Bandar, Kota Tanjung Balai, Sumatera Utara 21332</h4>
                        <hr>
                        <h3>DATA SELURUH TAMU</h3>
                        <table class="table table-bordered table-striped table-hover"> 
                        <tbody>
                            <thead>
    								<tr>
                                    <th>No.</th><th width="17%">Nama Pengunjung</th><th>Tujuan Kedatangan</th><th width="20%"><center>Alamat </center></th><th width="10%">Tgl. Masuk</th><th>Perihal</th>
                                    </tr>
							</thead>
						<tbody>
                            <!--ambil data dari database, dan tampilkan kedalam tabel-->
                            <?php
                            //buat sql untuk tampilan data, gunakan kata kunci select
                            $sql = "SELECT * FROM tamu";
                            $query = mysqli_query($koneksi, $sql) or die("SQL Anda Salah");
                            //Baca hasil query dari databse, gunakan perulangan untuk 
                            //Menampilkan data lebh dari satu. disini akan digunakan
                            //while dan fungdi mysqli_fecth_array
                            //Membuat variabel untuk menampilkan nomor urut
                            $nomor = 0;
                            //Melakukan perulangan u/menampilkan data
                            while ($data = mysqli_fetch_array($query)) {
                                $nomor++; //Penambahan satu untuk nilai var nomor
                                ?>
                                <tr>
                                    <td><?= $nomor ?></td>
                                    <td><?= $data['nama_pengunjung'] ?></td>
                                    <td><?= $data['tujuan_kedatangan'] ?></td>
                                    <td><?= $data['alamat'] ?></td>
                                    <td><?= $data['tgl_masuk'] ?></td>
                                    <td><?= $data['perihal'] ?></td>
                                </tr>
                                <!--Tutup Perulangan data-->
                            <?php } ?>
							</tbody>
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