import 'package:book_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../services/mock_data.dart';

//Changer les placeholder par des images à placer dans un dossier assets après que le projet soit bein fonctionnel.
class AccueilScreen extends StatelessWidget {
  const AccueilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final livres = MockData.getBooks().take(4).toList();

    return Scaffold(
      appBar: CustomAppBar(title: 'Acceuil'),
      body: Column(
        children: [
          // Avant "Livres en Vedette", ajoute
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
            child: Text(
              'Bienvenue sur Book App',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Découvrez et notez vos livres préférés',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              '📚 Livres en Vedette',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 26),

          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: livres
                  .map(
                    (livre) => SizedBox(
                      width: 130,
                      child: GestureDetector(
                        onTap: () => context.go('/livre/${livre.id}'),
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  livre.couverture,
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Container(
                                        height: 120,
                                        color: Colors.grey[300],
                                        child: const Icon(
                                          Icons.book,
                                          color: Colors.grey,
                                        ),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  livre.titre,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                livre.auteur,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: 46),
          ElevatedButton.icon(
            onPressed: () => context.go('/livres'),
            icon: const Icon(Icons.library_books),
            label: const Text('Voir tous les livres'),
          ),
        ],
      ),
    );
  }
}
