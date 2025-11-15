class Buku {
  String judul;
  String penulis;
  int kodeBuku;
  bool statusBuku;

  Buku(this.judul, this.penulis, this.kodeBuku, this.statusBuku);

  void infromasiBuku(){

  }

  void ubahStatus(bool statusBaru){
    dipinjam = statusBaru;
  }
}