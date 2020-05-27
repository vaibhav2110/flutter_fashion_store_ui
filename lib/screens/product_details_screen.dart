import 'package:fashion_app/data/products.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = "/product-details";
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productDetail = Products().findById(productId);

    final appBar = AppBar(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
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

    return Scaffold(
      appBar: appBar,
      extendBodyBehindAppBar: true,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  color: Colors.black,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.70,
                        top: 0,
                        child: Transform.scale(
                            scale: 1.1,
                            child: Container(
                              child: Hero(
                                  tag: productDetail.id,
                                  child: Image.network(productDetail.image,
                                      fit: BoxFit.cover)),
                            )),
                      ),
                      Positioned(
                        bottom: 120,
                        width: MediaQuery.of(context).size.width,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(productDetail.author.profilePic),
                          ),
                          title: Transform.translate(
                              offset: Offset(0, 4),
                              child: Text(productDetail.author.name,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14))),
                          subtitle: Text(productDetail.author.location,
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 10)),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 80.0),
                          child: Text(
                            productDetail.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ),
                      )
                    ],
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 40.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              BorderedContainer(
                                childWidget: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Size",
                                        style: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 10)),
                                    Text("Small",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              BorderedContainer(
                                childWidget: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Color",
                                        style: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 10)),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 7.0),
                                      child: Container(
                                        height: 7,
                                        width: 45,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            color: Colors.orange),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                          flex: 3,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 55,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white24),
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.add, color: Colors.white),
                                      Container(
                                        height: 26,
                                        width: 26,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white24),
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                        ),
                                        child: Center(
                                            child: Text("2",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12))),
                                      ),
                                      Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                BorderedContainer(
                                  childWidget: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Price",
                                          style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 10)),
                                      Text(
                                        productDetail.price,
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      Flexible(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Theme.of(context).accentColor,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(12.0),
                                splashColor: Colors.white24,
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Icon(Icons.shopping_basket,
                                            color: Colors.white),
                                        Text("Add",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class BorderedContainer extends StatelessWidget {
  final Widget childWidget;
  const BorderedContainer({
    this.childWidget,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white24),
          borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 8.0),
        child: childWidget,
      ),
    );
  }
}
