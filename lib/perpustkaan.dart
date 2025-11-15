import 'package:projekperpus/buku.dart';

class Perpustkaan {
  List<Buku> listBuku = [];

  void tambahbuku(Buku bukuBaru){
    listBuku.add(bukuBaru);
    print('Buku ${bukuBaru.judul} telah ditambahkan');
  }

  void lihatSemuaBuku(){
    if(listBuku.isEmpty){
      print('Tidak ada buku di perpus');
      return;
    }
    for (var buku in listBuku){
      print('Judul": ${buku.judul}, Penulis: ${buku.penulis}');
    }
  }  

  void updateBuku(int index, String judulBaru, String penulisBaru){
    if (index < 0 || index > listBuku.length){
      print('Index buku tidak ditemukan');
      return;
    }
      listBuku[index].judul = judulBaru;
      listBuku[index].penulis = penulisBaru;
      print('\nBuku di index $index talah diperbarui');
    } 
  
  void hapusBuku(int index) {
    if (index < 0 || index >= listBuku.length){
    print('\nIndex bUku tidak valid');
    return;
  }

  String title  = listBuku[index].judul;
  listBuku.removeAt(index);
  print('\nBuku "$title" telah di hapus.');
}
}