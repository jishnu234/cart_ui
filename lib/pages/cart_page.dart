import 'package:flutter/material.dart';
import 'package:cart_ui/widgets/widget_lib.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0, top: 6.0),
                child: GestureDetector(
                  child: Badge(
                    toAnimate: false,
                    badgeContent: Text(context.watch<Counter>().cartCount.toString()),
                    child: Icon(Icons.add_shopping_cart_rounded,
                     color: Colors.white,
                    size: 30.0,),
                  ),
                  onTap: (){
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



