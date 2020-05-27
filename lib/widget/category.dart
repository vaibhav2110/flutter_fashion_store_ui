import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoryItem extends StatelessWidget {
  final bool active;
  final name;
  final pic;

  CategoryItem({this.active, this.name, this.pic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        active
            ? Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                        width: 1.0, color: Theme.of(context).accentColor)),
                child: CircularAvatar(pic: pic),
              )
            : CircularAvatar(pic: pic),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: active ? FontWeight.bold : FontWeight.normal),
          ),
        )
      ]),
    );
  }
}

class CircularAvatar extends StatelessWidget {
  final pic;
  const CircularAvatar({
    this.pic,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(pic, height: 45, width: 45, fit: BoxFit.cover),
    );
  }
}
