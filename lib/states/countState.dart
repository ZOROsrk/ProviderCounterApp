

import 'package:flutter/material.dart';

class CountState extends ChangeNotifier {
  int count =0;

  int get getCount => count;

  incrementCount(){
    count++;
    notifyListeners();
  }
}