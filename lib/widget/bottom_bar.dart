import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
          height: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)),
              color: Theme.of(context).primaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width / 2 - 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.home, color: Theme.of(context).accentColor),
                      Icon(Icons.search, color: Colors.white)
                    ],
                  )),
              Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width / 2 - 30.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.bookmark, color: Colors.white),
                        ClipOval(
                          child: Image.network(
                              "https://images.unsplash.com/photo-1580971739182-ccd8cfef3707?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover),
                        )
                      ]))
            ],
          )),
    );
  }
}
