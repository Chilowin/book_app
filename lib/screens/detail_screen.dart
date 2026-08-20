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
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    livre.couverture,
                    height: 270,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 199, 101),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: Colors.white, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          moyenne.toStringAsFixed(1),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text(
              livre.titre,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'par ${livre.auteur}',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey[600],
              ),
            ),
            Text('${livre.genre} | ${livre.annee}'),
            Text('Note moyenne : ${moyenne.toStringAsFixed(1)} / 5'),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 216, 154, 154),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  livre.resume,
                  style: const TextStyle(fontSize: 14, height: 1.5),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
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
