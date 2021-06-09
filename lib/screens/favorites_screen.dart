import 'package:flutter/material.dart';
import 'package:book_app/models/book.dart';
import 'package:book_app/widgets/book_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Book> favoriteBooks;
  FavoritesScreen(this.favoriteBooks);

  @override
  Widget build(BuildContext context) {
    if (favoriteBooks.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return BookItem(
            id: favoriteBooks[index].id,
            title: favoriteBooks[index].title,
            imageUrl: favoriteBooks[index].imageUrl,
          );
        },
        itemCount: favoriteBooks.length,
      );
    }
  }
}
