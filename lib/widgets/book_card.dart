import 'package:flutter/material.dart';
import '../models/book.dart';

class BookCard extends StatelessWidget {
  final Book livre;
  final VoidCallback onTap;
  const BookCard({required this.livre, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            livre.couverture,
            width: 50,
            height: 70,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 50,
              height: 70,
              color: Colors.grey[300],
              child: const Icon(Icons.book, color: Colors.grey),
            ),
          ),
        ),
        title: Text(livre.titre, maxLines: 2, overflow: TextOverflow.ellipsis),
        subtitle: Text(livre.auteur),
        onTap: onTap,
      ),
    );
  }
}
