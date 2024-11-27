import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  // İkon parametresi
  final String title; // Başlık
  final String value;
  final IconData icon; // Gösterilecek değer // İkon boyutu

  const DetailsPage({
    Key? key,
    required this.title,
    required this.value,
    required this.icon, // Varsayılan ikon boyutu
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: theme.primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            Icon(icon, size: 100,color: Colors.grey,),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Değer
            Text(
              value,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
