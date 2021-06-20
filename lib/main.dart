import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:cart_ui/business_logic/logic.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(create: (_) => Counter(),
      child: Scaffold(
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
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              ListTile(
                title: Text('milk'),
                trailing: TextButton(
                  onPressed: context.watch<Counter>().milkCount >0 ? context.read<Counter>().decMilk: null,
                  child: Badge(
                      badgeContent: Text('${context.watch<Counter>().milkCount}'),
                      child: Icon(Icons.settings)),
                ),
              ),
              ListTile(
                title: Text('curd'),
                trailing: TextButton(
                  onPressed: context.watch<Counter>().curdCount >0 ? context.read<Counter>().decCurd: null,
                  child: Badge(
                      badgeContent: Text('${context.watch<Counter>().curdCount}'),
                      child: Icon(Icons.settings)),
                ),
              ),
              ListTile(
                title: Text('ice-cream'),
                trailing: TextButton(
                  onPressed: context.watch<Counter>().iceCreamCount >0 ? context.read<Counter>().decIce: null,
                  child: Badge(
                    badgeContent: Text('${context.watch<Counter>().iceCreamCount}'),
                    child: Icon(Icons.settings),
                  ),
                ),
              )
            ],
          ),
        ),
      ),)
    );
  }
}
