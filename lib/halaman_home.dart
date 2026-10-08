import 'package:flutter/material.dart';
import 'halaman_menu.dart'; 

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home E-Money'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HalamanMenu()),
            );
          },
          child: const Text('Buka Dompet Digital'),
        ),
      ),
    );
  }
}