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



