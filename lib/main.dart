import 'package:fashion_app/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(31, 31, 31, 1),
        accentColor: Color.fromRGBO(101, 50, 255, 1),
        backgroundColor: Colors.black,
        fontFamily: 'Poppins'
      ),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen()
      },
    );
  }
}
