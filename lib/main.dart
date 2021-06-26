import 'package:flutter/material.dart';
import 'package:cart_ui/pages/cart_page.dart';
import 'package:cart_ui/widgets/widget_lib.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => Counter(),
      child:MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartPage(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      ),
    );
  }
}
