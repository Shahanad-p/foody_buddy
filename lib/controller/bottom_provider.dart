import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier {
  int currentIndex = 0;
  buildBotoomBar(index) {
    currentIndex = index;
    notifyListeners();
  }
}
