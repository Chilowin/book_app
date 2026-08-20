import 'package:flutter/material.dart';
import '../models/book.dart';

class BookCard extends StatelessWidget {
  final Book livre;
  final VoidCallback onTap;
  const BookCard({required this.livre, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card();
  }
}
