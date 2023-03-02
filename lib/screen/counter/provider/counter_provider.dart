import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int i = 0;

  void Increment() {
    i++;
    notifyListeners();
  }

  void Decrement() {
    i--;
    notifyListeners();
  }

  void Two() {
    i*=2;
    notifyListeners();
  }

  void Three() {
    i*=3;
    notifyListeners();
  }

  void Four() {
    i*=4;
    notifyListeners();
  }

  void Reset(){
    i = 0;
    notifyListeners();
  }
}
