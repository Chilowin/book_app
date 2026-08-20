import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../services/mock_data.dart';
import '../widgets/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  final int id;
  const DetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    final livre = MockData.getBooks().firstWhere((l) => l.id == id);
    final avis = MockData.getMockReviews()
        .where((a) => a.bookId == id)
        .toList();
    final moyenne = avis.isEmpty
        ? 0.0
        : avis.fold(0.0, (sum, a) => sum + a.note) / avis.length;
    return Scaffold(
      appBar: CustomAppBar(title: 'Details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                livre.couverture,
                height: 270,
                width: 150,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 270,
                  width: 150,
                  color: Colors.grey[300],
                  child: const Icon(Icons.book, size: 60, color: Colors.grey),
                ),
              ),
            ),
            Text(livre.titre),
            Text('par ${livre.auteur}'),
            Text('${livre.genre} | ${livre.annee}'),
            Text('Note moyenne : ${moyenne.toStringAsFixed(1)} / 5'),
            Text(livre.resume),
            ElevatedButton(
              onPressed: () => context.go('/avis/$id'),
              child: const Text('Donnez votre avis'),
            ),
          ],
        ),
      ),
    );
  }
}
