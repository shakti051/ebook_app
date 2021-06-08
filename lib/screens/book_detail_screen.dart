import 'package:flutter/material.dart';
import '../dummy_data.dart';

class BookDetailScreen extends StatelessWidget {
  static const routeName = '/book-detail';
  final Function toggleFavorite;
  final Function isFavorite;

  BookDetailScreen(this.toggleFavorite, this.isFavorite);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bookId = ModalRoute.of(context).settings.arguments as String;
    final selectedBook = DUMMY_BOOKS.firstWhere((book) => book.id == bookId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedBook.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedBook.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'About'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedBook.about[index])),
                ),
                itemCount: selectedBook.about.length,
              ),
            ),
            buildSectionTitle(context, 'Chapters'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${(index + 1)}'),
                      ),
                      title: Text(
                        selectedBook.chapters[index],
                      ),
                    ),
                    Divider()
                  ],
                ),
                itemCount: selectedBook.chapters.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(bookId) ? Icons.favorite : Icons.favorite_border,
          color: isFavorite(bookId) ? Colors.red : Colors.grey,
        ),
        onPressed: () => toggleFavorite(bookId),
      ),
    );
  }
}