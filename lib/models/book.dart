class Book {
  final int id;
  final String titre;
  final String auteur;
  final String genre;
  final int annee;
  final String couverture;
  final String resume;

  Book({
    required this.id,
    required this.titre,
    required this.auteur,
    required this.genre,
    required this.annee,
    required this.couverture,
    required this.resume,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] as int,
      titre: json['titre'] as String,
      auteur: json['auteur'] as String,
      genre: json['genre'] as String,
      annee: json['annee'] as int,
      couverture: json['couverture'] as String,
      resume: json['resume'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titre': titre,
      'auteur': auteur,
      'genre': genre,
      'annee': annee,
      'couverture': couverture,
      'resume': resume,
    };
  }
}
