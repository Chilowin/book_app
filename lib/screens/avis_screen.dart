import 'package:flutter/material.dart';

class AvisScreen extends StatelessWidget {
  final int bookId;
  const AvisScreen({required this.bookId, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avis')),
      body: const Center(child: Text('Avis')),
    );
  }
}
