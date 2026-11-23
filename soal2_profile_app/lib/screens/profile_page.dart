import 'package:flutter/material.dart';

import '../models/profile.dart';

class ProfilePage extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggleTheme;

  const ProfilePage({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile _profile = const Profile(
    nama: 'M Fiko Baihaqqi',
    nim: '1124160223',
    prodi: 'Teknik Informatika',
    kelas: 'Reguler / Shift',
    bio: 'Mahasiswa Teknik Informatika ITB Bina Sarana Global yang antusias mempelajari pengembangan aplikasi mobile Flutter dan rekayasa perangkat lunak.',
    email: 'fikobaihaqqi@gmail.com',
    hp: '081234567890',
    github: 'fikobaihaqqi',
  );

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            tooltip: widget.isDarkMode ? 'Mode Terang' : 'Mode Gelap',
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => widget.onToggleTheme(!widget.isDarkMode),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 56,
                backgroundColor: colorScheme.primaryContainer,
                child: const CircleAvatar(
                  radius: 52,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _profile.nama,
                style: Theme.of(context).textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                'NIM: ${_profile.nim} • Kelas: ${_profile.kelas}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2),
              Text(
                _profile.prodi,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Card(
                elevation: 0,
                color: colorScheme.surfaceContainerHighest.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    _profile.bio,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
