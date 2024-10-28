import 'package:flutter/material.dart';
import 'package:workspace/core/enum/journey_direction_enum.dart';
import 'package:workspace/core/operation/station_operation.dart';
import 'package:workspace/core/model/station.dart';

// Durakları tutacak sınıf
class JourneyProvider with ChangeNotifier {
  IStation? _startStation = DataOperation().getRandomStation();
  IStation? _endStation = DataOperation().getRandomStation();
  JourneyDirectionEnum? _journeyDirectionEnum = JourneyDirectionEnum.sb;

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

  void setJourneyState() {}
}
