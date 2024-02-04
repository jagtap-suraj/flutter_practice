import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier {
  List<int> numberList = [
    1,
    2,
    3,
    4,
    5
  ];

  void incrementCounter() {
    numberList.add(numberList.last + 1);
    notifyListeners();
  }
}
