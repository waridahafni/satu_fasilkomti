// profile_page.dart

import 'package:flutter/material.dart';
import 'mahasiswa.dart';

class ProfilePage extends StatelessWidget {
  final Mahasiswa mahasiswa;

  ProfilePage({required this.mahasiswa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(mahasiswa.fotoUrl),
              radius: 50.0,
            ),
            SizedBox(height: 16.0),
            _buildRichText('Nama', mahasiswa.nama),
            _buildRichText('Fakultas', mahasiswa.fakultas),
            _buildRichText('Program Studi', mahasiswa.programStudi),
            _buildRichText('Angkatan', mahasiswa.angkatan),
            _buildRichText('Status', mahasiswa.status),
            _buildRichText('Email', mahasiswa.email),
            _buildRichText(
                'Riwayat Prestasi', mahasiswa.riwayatPrestasi.join('\n')),
            // Tambahkan info lainnya yang diinginkan
          ],
        ),
      ),
    );
  }

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
