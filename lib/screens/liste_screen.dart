import 'package:book_app/widgets/custom_app_bar.dart';
import 'package:book_app/widgets/empty_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/book.dart';
import '../services/mock_data.dart';
import '../widgets/book_card.dart';

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
    final estTablet = MediaQuery.of(context).size.width >= 600;
    return Scaffold(
      appBar: CustomAppBar(title: 'Liste'),
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
            child: _livresFiltres.isEmpty
                ? EmptyState(message: 'Aucun livre pour "$_recherche"')
                : estTablet
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 colonnes sur tablet
                      childAspectRatio: 3,
                    ),
                    itemCount: _livresFiltres.length,
                    itemBuilder: (context, index) {
                      final livre = _livresFiltres[index];
                      return BookCard(
                        livre: livre,
                        onTap: () => context.go('/livre/${livre.id}'),
                      );
                    },
                  )
                : ListView.builder(
                    itemCount: _livresFiltres.length,
                    itemBuilder: (context, index) {
                      final livre = _livresFiltres[index];
                      return BookCard(
                        livre: livre,
                        onTap: () => context.go('/livre/${livre.id}'),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
