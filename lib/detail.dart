import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  //DEFINISIKAN VARIABLE YANG SAMA
  String noResi = '';
  String layanan = '';
  String name = '';
  String status = '';
  String tujuan = '';
  String date = '';
  String penerima = '';

  //CONSTRUCTOR YANG BERARTI KETIKA ME-LOAD FILE INI, DIA AKAN MEMINTA DATA
  Detail(this.noResi, this.layanan, this.name, this.status, this.tujuan, this.date, this.penerima);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile( //DETAIL INFORMASINYA KITA GUNAKAN LISTTILE
          title: Text( //PADA BAGIAN TITLE DIGUNAKAN UNTUK MENAMPILKAN RESI DAN JENIS LAYANANNYA
            '${noResi} - $layanan',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Padding(
            //SEDANGKAN PADA BAGIAN SUBTITLE (TEPAT DIBAWAH TITLE), KITA TAMPILKAN INFORMASI LAINNYA
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(),
                //BAGIAN PERTAMA ADALAH NAMA PENERIMA
                Text(
                  'Nama: $name',
                  style: TextStyle(
                      color: Colors.black87, fontSize: 13),
                ),
                //KEMUDIAN STATUS PENGIRIMAN
                Text(
                  'Status: $status',
                  style: TextStyle(
                      color: Colors.black87, fontSize: 13),
                ),
                //TUJUAN PENGIRIMAN
                Text(
                  'Tujuan: $tujuan',
                  style: TextStyle(
                      color: Colors.black87, fontSize: 13),
                ),
                //TANGGAL BARANG DITERIMA
                Text(
                  'Tgl Terima: $date',
                  style: TextStyle(
                      color: Colors.black87, fontSize: 13),
                ),
                //DAN SIAPA NAMA PENERIMANYA
                Text(
                  '$penerima',
                  style: TextStyle(
                      color: Colors.black87, fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}