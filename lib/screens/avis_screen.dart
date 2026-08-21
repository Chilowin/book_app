import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import '../models/review.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_app_bar.dart';

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
      appBar: CustomAppBar(title: 'Avis'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                'Votre avis',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _nomController,
                decoration: InputDecoration(
                  labelText: 'Nom',
                  hintText: 'Entrez votre nom',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Le nom est obligatoire';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                maxLines: 3,
                controller: _commentaireController,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  labelText: 'Commentaire',
                  hintText: 'Entrez votre commentaire/avis',
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Dites au moins quelque chose';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              Slider(
                value: _note,
                min: 1.0,
                max: 5.0,
                divisions: 8,
                label: _note.toString(),
                onChanged: (val) => setState(() => _note = val),
              ),
              Text(
                'Note : ${_note.toStringAsFixed(1)} / 5',
                style: const TextStyle(fontSize: 16),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final storageService = StorageService();
                      await storageService.saveReview(
                        Review(
                          id: DateTime.now().millisecondsSinceEpoch,
                          bookId: widget.bookId,
                          nom: _nomController.text,
                          commentaire: _commentaireController.text,
                          note: _note,
                        ),
                      );
                      if (context.mounted) context.pop();
                    }
                  },
                  child: const Text('Soumettre'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
