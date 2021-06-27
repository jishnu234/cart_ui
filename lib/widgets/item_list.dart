import 'package:flutter/material.dart';
import 'package:cart_ui/widgets/widget_lib.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            'Milk',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          trailing: GestureDetector(
            onTap: context.watch<Counter>().milkCount > 0
                ? context.read<Counter>().decMilk
                : null,
            child: Badge(
                toAnimate: false,
                badgeContent: Text('${context.watch<Counter>().milkCount}'),
                child: Icon(
                  Icons.shopping_cart_rounded,
                  size: 30.0,
                  color: Colors.black,
                )),
          ),
        ),
        ListTile(
          title: Text(
            'Curd',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          trailing: GestureDetector(
            onTap: context.watch<Counter>().curdCount > 0
                ? context.read<Counter>().decCurd
                : null,
            child: Badge(
                toAnimate: false,
                badgeContent: Text('${context.watch<Counter>().curdCount}'),
                child: Icon(Icons.shopping_cart_rounded,size: 30.0,
                  color: Colors.black,),),
          ),
        ),
        ListTile(
          title: Text(
            'Ice-Cream',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          trailing: GestureDetector(
            onTap: context.watch<Counter>().iceCreamCount > 0
                ? context.read<Counter>().decIce
                : null,
            child: Badge(
              toAnimate: false,
              badgeContent: Text('${context.watch<Counter>().iceCreamCount}'),
              child: Icon(
                Icons.shopping_cart_rounded,
                size: 30.0,
                  color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
