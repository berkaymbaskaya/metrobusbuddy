import 'package:flutter/material.dart';
import 'package:workspace/core/enum/journey_direction_enum.dart';
import 'package:workspace/core/model/journey.dart';
import 'package:workspace/core/operation/station_operation.dart';
import 'package:workspace/core/model/station.dart';

// Durakları tutacak sınıf
class JourneyProvider with ChangeNotifier {
  IJourney? _journey;

  void setData(IJourney value) {
    _journey = value;
    notifyListeners(); // Değişiklikleri bildirmek için
  }

  IJourney? getData() {
    return _journey;
  }
}
