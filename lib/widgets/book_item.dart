import 'package:book_app/screens/book_detail_screen.dart';
import 'package:flutter/material.dart';
import '../models/book.dart';

class BookItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;



  BookItem(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      });


  void selectBook(context) {
    Navigator.of(context)
        .pushNamed(
      BookDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
      //  removeItem(result);
      }
      // print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectBook(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,color: Colors.red,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                        Text("14",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 2,
                      ),
                      Text("Likes"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.comment
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("21",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 2,
                      ),
                      Text("Comments"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.share,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("Share"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
