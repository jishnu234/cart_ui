import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({Key? key, required this.count, required this.item, required this.img}) : super(key: key);

  final String count;
  final String item;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 5,
                ),
                Text('Rs 10/piece'),
                SizedBox(
                  height: 5,
                ),
                Text('Total Count: $count'),
              ],
            ),
            leading: Image(
              image: AssetImage(img),
              width: 60,
              height: 60,
            ),
            trailing: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total price',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    (int.parse(count) * 10).toString(),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
