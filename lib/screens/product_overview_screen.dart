import 'package:fashion_app/data/categories.dart';
import 'package:fashion_app/data/products.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/widget/category.dart';
import 'package:fashion_app/widget/product_item.dart';
import 'package:fashion_app/widget/bottom_bar.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> products = Products().products;
    final mediaQuery = MediaQuery.of(context);

    final appBar = AppBar(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Theme.of(context).primaryColor,
      leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              onPressed: () {})),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: IconButton(
              icon: Icon(Icons.shopping_basket),
              color: Colors.white,
              onPressed: () {}),
        )
      ],
    );

    final listHeight = (mediaQuery.size.height -
        appBar.preferredSize.height -
        60 -
        100 -
        mediaQuery.padding.top);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: appBar,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
            ),
            height: 100.0,
            width: double.infinity,
            child: Row(
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: Categories().getCategories().map((category) {
                return CategoryItem(
                    active: category.active,
                    name: category.name,
                    pic: category.pic);
              }).toList(),
            ),
          ),
          Container(
            height: listHeight,
            child: ListView.builder(
                itemBuilder: (_, i) => ProductItem(
                    id: products[i].id,
                    author: products[i].author,
                    image: products[i].image,
                    likes: products[i].likes,
                    comments: products[i].comments,
                    title: products[i].title)),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.dashboard),
        elevation: 4.0,
        onPressed: () {},
        backgroundColor: Theme.of(context).accentColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
