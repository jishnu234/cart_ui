import 'package:flutter/widgets.dart';

class Counter extends ChangeNotifier {

  var isMilkIncremented = false;
  var isCurdIncremented = false;
  var isCreamIncremented = false;

  var cartCount = 0;

    var milkCount = 100;
    var iceCreamCount = 100;
    var curdCount = 100;

    decMilk() {
      milkCount -= 1;
      if(!this.isMilkIncremented) {cartCount++; this.isMilkIncremented = true;}
      notifyListeners();
    }

    decIce() {
      iceCreamCount -= 1;
      if(!this.isCurdIncremented) {cartCount++; this.isCurdIncremented = true;}
      notifyListeners();
    }

    decCurd() {
      curdCount -= 1;
      if(!this.isCreamIncremented) {cartCount++; this.isCreamIncremented = true;}
      notifyListeners();
    }
}