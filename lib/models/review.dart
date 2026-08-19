class Review {
  final int id;
  final int bookId;
  final String commentaire;
  final double note;

  Review({
    required this.id,
    required this.bookId,
    required this.commentaire,
    required this.note,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      id: json['id'] as int,
      bookId: json['bookId'] as int,
      commentaire: json['commentaire'] as String,
      note: (json['note'] as num).toDouble(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bookId': bookId,
      'commentaire': commentaire,
      'note': note,
    };
  }
}
