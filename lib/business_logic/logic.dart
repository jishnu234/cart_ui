import 'package:flutter/widgets.dart';

class Counter extends ChangeNotifier {

    var milkCount = 13;
    var iceCreamCount = 4;
    var curdCount = 13;

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