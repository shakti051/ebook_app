import 'package:flutter/material.dart';
import 'package:book_app/dummy_data.dart';
import 'package:book_app/models/book.dart';
import 'package:book_app/screens/book_detail_screen.dart';
import 'package:book_app/screens/tabs_screen.dart';
import 'screens/category_books_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Book> _availableBooks = DUMMY_BOOKS;
  List<Book> _favoriteBooks = [];


  void _toggleFavorite(String bookId) {
    final existingIndex =
        _favoriteBooks.indexWhere((book) => book.id == bookId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteBooks.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteBooks.add(
          DUMMY_BOOKS.firstWhere((book) => book.id == bookId),
        );
      });
    }
  }

  bool _isBookFavorite(String id) {
    return _favoriteBooks.any((book) => book.id == id);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Read Books',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(_favoriteBooks),
        CategoryBooksScreen.routeName: (ctx) => CategoryBooksScreen(_availableBooks),
        BookDetailScreen.routeName: (ctx) => BookDetailScreen(_toggleFavorite,_isBookFavorite),
    },
    );
  }
}