import 'package:cart_ui/business_logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';
import 'package:cart_ui/widgets/item_list.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            SafeArea(
              child: Badge(
                badgeContent: Text('0'),
                child: Icon(Icons.settings),
              ),
            )
          ],
        ),
        body: ChangeNotifierProvider(
          create: (_) => Counter(),
          child: Container(
          padding: EdgeInsets.all(20),
          child: ItemList(),
        ),
        )
      );
  }
}



