import 'package:flutter_test/flutter_test.dart';
import 'package:book_app/models/book.dart';
import 'package:book_app/models/review.dart';

void main() {
  group('Book', () {
    test('Book.toJson() retourne les bonnes données', () {
      final book = Book(
        id: 1,
        titre: 'Le Petit Prince',
        auteur: 'Saint-Exupéry',
        genre: 'Fiction',
        annee: 1943,
        couverture: 'assets/images/petit_prince.jpeg',
        resume: 'Un conte poétique',
      );

      final json = book.toJson();

      expect(json['id'], 1);
      expect(json['titre'], 'Le Petit Prince');
      expect(json['auteur'], 'Saint-Exupéry');
    });

    test('Book.fromJson() reconstruit correctement un Book', () {
      final Map<String, dynamic> json = {
        'id': 1,
        'titre': 'Le Petit Prince',
        'auteur': 'Saint-Exupéry',
        'genre': 'Fiction',
        'annee': 1943,
        'couverture': 'assets/test.jpg',
        'resume': 'Un conte',
      };

      final book = Book.fromJson(json);

      expect(book.id, 1);
      expect(book.titre, 'Le Petit Prince');
      expect(book.genre, 'Fiction');
      expect(book.annee, 1943);
      expect(book.couverture, 'assets/test.jpg');
      expect(book.resume, 'Un conte');
    });
  });

  group('Review', () {
    test('toJson() inclut tous les champs dont nom', () {
      final review = Review(
        id: 1,
        bookId: 1,
        nom: 'Achille',
        commentaire: 'Excellent livre',
        note: 5.0,
      );
      final json = review.toJson();
      expect(json['nom'], 'Achille');
      expect(json['note'], 5.0);
      expect(json['commentaire'], 'Excellent livre');
    });

    test('fromJson() reconstruit correctement un Review', () {
      final Map<String, dynamic> json = {
        'id': 1,
        'bookId': 1,
        'nom': 'Achille',
        'commentaire': 'Excellent livre',
        'note': 5.0,
      };
      final review = Review.fromJson(json);
      expect(review.id, 1);
      expect(review.nom, 'Achille');
      expect(review.note, 5.0);
    });
  });
}
