import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 5;

  int get counter => _counter;

  void incrementCount(){
    _counter++;
    notifyListeners();
    print(_counter);
  } 

  void decrementCount(){
    _counter--;
    notifyListeners();
    print(_counter);
  } 
}