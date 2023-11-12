// mahasiswa.dart

class Mahasiswa {
  final String nama;
  final String nim;
  final String fotoUrl;
  final String email;
  final String angkatan;
  final String fakultas;
  final String programStudi;
  final String status;
  final List<String> riwayatPrestasi;

  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.fotoUrl,
    required this.email,
    required this.angkatan,
    required this.fakultas,
    required this.programStudi,
    required this.status,
    required this.riwayatPrestasi,
  });
}
