import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workspace/core/providers/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hoşgeldiniz!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tema değişimini sağlayan fonksiyonu çağırıyoruz
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              child: const Text('Temayı Değiştir'),
            ),
          ],
        ),
      ),
    );
  }
}
