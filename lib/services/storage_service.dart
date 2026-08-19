import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/review.dart';

class StorageService {
  static const String _reviewsKey = 'reviews';
  Future<List<Review>> getReviews() async {
    final prefs = await SharedPreferences.getInstance();
    final String? data = prefs.getString(_reviewsKey);

    if (data == null) {
      return [];
    }
    //Json decode puis from Json sur chaque element
    final List<dynamic> jsonList = json.decode(data) as List<dynamic>;
    return jsonList
        .map((json) => Review.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<void> saveReview(Review review) async {
    final prefs = await SharedPreferences.getInstance();

    //Recuperer les reviews existantes
    final List<Review> existing = await getReviews();
    //Ajouter le nouveau review
    existing.add(review);
    //Encoder et sauvegarder
    final List<Map> jsonList = existing.map((r) => r.toJson()).toList();
    final encoded = jsonEncode(jsonList);
    await prefs.setString(_reviewsKey, encoded);
  }
}
