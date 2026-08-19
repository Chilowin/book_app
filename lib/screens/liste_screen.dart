import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/mock_data.dart';

class ListeScreen extends StatefulWidget {
  const ListeScreen({super.key});

  @override
  State<ListeScreen> createState() => _ListeScreenState();
}

class _ListeScreenState extends State<ListeScreen> {
  String _recherche = '';

  List<Book> get _livresFiltres => MockData.getBooks()
      .where(
        (livre) =>
            livre.titre.toLowerCase().contains(_recherche.toLowerCase()) ||
            livre.auteur.toLowerCase().contains(_recherche.toLowerCase()),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Livres')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (valeur) => setState(() => _recherche = valeur),
              decoration: const InputDecoration(
                hintText: 'Rechercher un livre spécifique?',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _livresFiltres.length,
              itemBuilder: (context, index) {
                final livre = _livresFiltres[index];
                return Card(
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(Icons.book, color: Colors.grey),
                    ),
                    title: Text(livre.titre),
                    subtitle: Text(livre.auteur),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
