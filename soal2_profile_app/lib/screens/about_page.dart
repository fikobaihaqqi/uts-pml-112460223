import 'package:flutter/material.dart';

import '../widgets/info_tile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Saya')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Keahlian & Hobi',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 8),
          const Card(
            child: Column(
              children: [
                InfoTile(
                  icon: Icons.phone_android,
                  label: 'Mobile App Development',
                  value: 'Flutter, Dart, & State Management',
                ),
                Divider(height: 1),
                InfoTile(
                  icon: Icons.web,
                  label: 'Web Programming',
                  value: 'HTML, CSS, PHP, & MySQL Database',
                ),
                Divider(height: 1),
                InfoTile(
                  icon: Icons.design_services,
                  label: 'UI/UX Prototyping',
                  value: 'Material Design 3 & Wireframing',
                ),
                Divider(height: 1),
                InfoTile(
                  icon: Icons.sports_esports,
                  label: 'Hobi & Minat',
                  value: 'Eksplorasi Teknologi Open Source & Fotografi',
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Riwayat Pendidikan',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 8),
          const Card(
            child: Column(
              children: [
                InfoTile(
                  icon: Icons.school,
                  label: '2024 - Sekarang (S1 Teknik Informatika)',
                  value: 'Institut Teknologi & Bisnis Bina Sarana Global',
                ),
                Divider(height: 1),
                InfoTile(
                  icon: Icons.account_balance,
                  label: '2021 - 2024 (Pendidikan Menengah)',
                  value: 'SMA / SMK Jurusan Rekayasa Perangkat Lunak / IPA',
                ),
                Divider(height: 1),
                InfoTile(
                  icon: Icons.menu_book,
                  label: '2018 - 2021 (Pendidikan Dasar)',
                  value: 'SMP Negeri',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}