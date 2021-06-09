import 'package:flutter/foundation.dart';


class Book {
  final String id;
  final List<String> categories;
  final String title;
  final  imageUrl;

  const Book({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
  });
}