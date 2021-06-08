import 'package:flutter/material.dart';
import '../widgets/book_item.dart';
import '../models/book.dart';

class CategoryBooksScreen extends StatefulWidget {
  static const routeName = '/category-books';

  final List<Book> availableBooks;
  CategoryBooksScreen(this.availableBooks);

  @override
  _CategoryBooksScreenState createState() => _CategoryBooksScreenState();
}

class _CategoryBooksScreenState extends State<CategoryBooksScreen> {
  String categoryTitle;
  List<Book> displayedBooks;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedBooks = widget.availableBooks.where((book) {
        return book.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return BookItem(
            id: displayedBooks[index].id,
            title: displayedBooks[index].title,
            imageUrl: displayedBooks[index].imageUrl,
            affordability: displayedBooks[index].affordability,
            
          );
        },
        itemCount: displayedBooks.length,
      ),
    );
  }
}
