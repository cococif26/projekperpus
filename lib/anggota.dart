import 'package:projekperpus/orang.dart';
import 'package:projekperpus/buku.dart';

class Anggota extends Orang {
  int jumlah peminjaman = 0;

  Anggota(super.idOrang, super.namaOrang);

  void pinjamBuku(Buku buku){
    if (!buku.dipinjam) {
      buku.ubahStatus(true);
      jumlahPinjaman++;
    }else {
      print("Buku sedang dipinjam")
    }
  }
}