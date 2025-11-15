import 'orang.dart';
import 'buku.dart';
import 'sirkulasi.dart';

class Petugas extends Orang {
  String jabatan;

  Petugas(String id, String nama, this.jabatan) : super(id, nama);

  // Method mengelola buku
  void kelolaBuku(Buku buku, {bool ubahStatus = false}) {
    if (ubahStatus) {
      buku.ubahStatus();
    }
    print("Petugas $nama mengelola buku: ${buku.judul}");
  }

  // Method mengelola sirkulasi
  void kelolaSirkulasi(Sirkulasi s) {
    print("Petugas $nama memproses sirkulasi ID: ${s.idTransaksi}");
    s.prosesSirkulasi();
  }
}
