import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Expensive,
}

class Book {
  final String id;
  final List<String> categories;
  final String title;
  final  imageUrl;
  final List<String> about;
  final List<String> chapters;  
  final Affordability affordability;

  const Book({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.about,
    @required this.chapters,
     @required this.affordability,
  });
}