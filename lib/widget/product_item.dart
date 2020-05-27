import 'package:fashion_app/data/products.dart';
import 'package:fashion_app/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final id;
  final Author author;
  final String image;
  final String title;
  final int likes;
  final int comments;
  final String price;

  ProductItem(
      {this.id,
      this.author,
      this.image,
      this.title,
      this.likes,
      this.comments,
      this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailsScreen.routeName, arguments: id);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(author.profilePic),
                ),
                title: Transform.translate(
                  offset: Offset(0, 4),
                  child: Text(
                    author.name,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                subtitle: Text(
                  author.location,
                  style: TextStyle(color: Colors.white60, fontSize: 10),
                ),
                trailing: Transform.translate(
                  offset: Offset(10, 0),
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Hero(
                    child: Image.network(image),
                    tag: id,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mode_comment,
                          size: 20,
                          color: Colors.white,
                        ),
                        label: Text(
                          comments.toString(),
                          style: TextStyle(color: Colors.white60, fontSize: 12),
                        )),
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: Colors.white,
                        ),
                        label: Text(
                          likes.toString(),
                          style: TextStyle(color: Colors.white60, fontSize: 12),
                        )),
                    Expanded(child: SizedBox()),
                    IconButton(
                        icon: Icon(
                          Icons.bookmark_border,
                          size: 20,
                          color: Colors.white,
                        ),
                        onPressed: null)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
