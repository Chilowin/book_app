import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int id;
  const DetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avis')),
      body: const Center(child: Text('Avis')),
    );
  }
}
