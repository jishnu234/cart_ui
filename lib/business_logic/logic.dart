import 'package:flutter/widgets.dart';

class Counter extends ChangeNotifier {

    var milkCount = 100;
    var iceCreamCount = 100;
    var curdCount = 100;

    decMilk() {
      milkCount -= 1;
      notifyListeners();
    }

    decIce() {
      iceCreamCount -= 1;
      notifyListeners();
    }

    decCurd() {
      curdCount -= 1;
      notifyListeners();
    }
}