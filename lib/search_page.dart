// search_page.dart

import 'package:flutter/material.dart';
import 'mahasiswa.dart';
import 'profile_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  Mahasiswa? _selectedMahasiswa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cari Mahasiswa Fasilkom-TI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Masukkan Nama/NIM Mahasiswa',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _onSearchPressed(_searchController.text);
              },
              child: Text('Cari'),
            ),
            SizedBox(height: 16.0),
            if (_selectedMahasiswa != null) ...[
              CircleAvatar(
                backgroundImage: NetworkImage(_selectedMahasiswa!.fotoUrl),
                radius: 50.0,
              ),
              SizedBox(height: 16.0),
              _buildRichText('Nama', _selectedMahasiswa!.nama),
              _buildRichText('Fakultas', _selectedMahasiswa!.fakultas),
              _buildRichText('Program Studi', _selectedMahasiswa!.programStudi),
              _buildRichText('Angkatan', _selectedMahasiswa!.angkatan),
              _buildRichText('Status', _selectedMahasiswa!.status),
              _buildRichText('Email', _selectedMahasiswa!.email),
              _buildRichText('Riwayat Prestasi',
                  _selectedMahasiswa!.riwayatPrestasi.join('\n')),
              // Tambahkan info lainnya yang diinginkan
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProfilePage(mahasiswa: _selectedMahasiswa!),
                    ),
                  );
                },
                child: Text('Lihat Profil'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _onSearchPressed(String query) {
    // Gantilah dengan logika pengambilan data mahasiswa sesuai kebutuhan
    Mahasiswa? foundMahasiswa = _dummyData.firstWhere(
      (mahasiswa) =>
          mahasiswa.nama.toLowerCase() == query.toLowerCase() ||
          mahasiswa.nim == query,
      orElse: () => null,
    );

    if (foundMahasiswa != null) {
      setState(() {
        _selectedMahasiswa = foundMahasiswa;
      });
    } else {
      // Tampilkan pesan jika mahasiswa tidak ditemukan
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Mahasiswa tidak ditemukan'),
            content: Text('Coba masukkan nama atau NIM yang valid.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  // Simulasikan data mahasiswa (dummy data)
  List<Mahasiswa> _dummyData = [
    Mahasiswa(
      nama: 'Warida Hafni',
      nim: '201402018',
      fotoUrl:
          'data:image/jpeg;base64,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',
      email: 'waridahafni123@gmail.com',
      angkatan: '2020',
      fakultas: 'Fasilkom-TI',
      programStudi: 'Teknologi Informasi',
      status: 'Aktif',
      riwayatPrestasi: ['Juara 1 Lomba UI/UX Design', 'Olimpiade Matematika'],
    ),
    Mahasiswa(
      nama: 'putri',
      nim: '201402019',
      fotoUrl:
          'data:image/jpeg;base64,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',
      email: 'putriaj123@gmail.com',
      angkatan: '2020',
      fakultas: 'Fasilkom-TI',
      programStudi: 'Teknologi Informasi',
      status: 'Aktif',
      riwayatPrestasi: ['Juara 1 Lomba UI/UX Design', 'Olimpiade Matematika'],
    ),
  ];

  Widget _buildRichText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: '$label: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
