import 'package:flutter/material.dart';
import 'package:workspace/models/class/station.dart';

// Durakları tutacak sınıf
class JourneyProvider with ChangeNotifier {
  IStation? _startStation;
  IStation? _endStation;

  // Başlangıç durağını al
  IStation? get startStation => _startStation;

  // Varış durağını al
  IStation? get endStation => _endStation;

  // Başlangıç durağını ayarla
  void setStartStation(IStation station) {
    _startStation = station;
    notifyListeners(); // Değişiklikleri bildirmek için
  }

  // Varış durağını ayarla
  void setEndStation(IStation station) {
    _endStation = station;
    notifyListeners(); // Değişiklikleri bildirmek için
  }
}