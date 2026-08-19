import 'package:flutter/material.dart';

class AvisScreen extends StatefulWidget {
  final int bookId;
  const AvisScreen({required this.bookId, super.key});

  @override
  State<AvisScreen> createState() => _AvisScreenState();
}

class _AvisScreenState extends State<AvisScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nomController = TextEditingController();
  final _commentaireController = TextEditingController();
  double _note = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Donner un avis')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            // tes champs ici
          ],
        ),
      ),
    );
  }
}
