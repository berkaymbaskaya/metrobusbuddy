import 'package:flutter/material.dart';

class BottomNavigationProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setData(int index) {
    print("here $index");
    _selectedIndex = index;
    notifyListeners(); // Değişiklikleri bildirmek için
  }
}
