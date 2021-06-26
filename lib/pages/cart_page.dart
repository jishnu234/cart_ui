import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:cart_ui/widgets/item_list.dart';
import 'package:cart_ui/cart_shelf.dart';
import 'package:provider/provider.dart';
import 'package:cart_ui/business_logic/logic.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0, top: 6.0),
                child: TextButton(
                  child: Badge(
                    badgeContent: Text(context.watch<Counter>().cartCount.toString()),
                    child: Icon(Icons.settings, color: Colors.white,),
                  ),
                  onPressed: (){
                    context.read<Counter>().cartCount > 0 ? Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => CartShelf())): ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Cart is Empty'),
                      duration: Duration(
                        seconds: 2,
                      ),
                    ));
                  },
                ),
              ),
            )
          ],
          title: Text('Sample cart'),
        ),
        body:  Container(
          padding: EdgeInsets.all(20),
          child: ItemList(),
        ),

      );
  }
}



