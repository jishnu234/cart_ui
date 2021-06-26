import 'package:flutter/material.dart';
import 'package:cart_ui/widgets/cart_item_tile.dart';
import 'package:cart_ui/widgets/widget_lib.dart';

class CartShelf extends StatelessWidget {
  const CartShelf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int milkCount = 100 - context.watch<Counter>().milkCount;
    int iceCount = 100 - context.watch<Counter>().iceCreamCount;
    int curdCount = 100 - context.watch<Counter>().curdCount;

    int totalPrice = (milkCount*10) + (iceCount*10) + (curdCount*10);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cart list'),
        ),
        body: Container(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 20.0),
                child: Row(children: [
                  Text(
                    'Subtotal : ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '$totalPrice Rs',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],),
              ),
              CartItemTile(count: milkCount.toString(), item: 'Milk', img: 'assets/milk.png'),
              CartItemTile(count: curdCount.toString(), item: 'Curd',img: 'assets/curd.png'),
              CartItemTile(count: iceCount.toString(), item: 'Ice cream', img: 'assets/ice_cream.png'),
            ],
          ),
        ),
      ),
    );
  }
}
