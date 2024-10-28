// lib/operations/data_operation.dart
import 'dart:math';
import 'package:workspace/core/class/station.dart';
import 'package:workspace/core/constant/metrobus_station_constant.dart';

class DataOperation {
  final List<Station> stations =
      metrobusStations.map((data) => Station.fromMap(data)).toList();
  // Örnek: Veri filtreleme işlevi

  IStation getRandomStation() {
    return stations[Random().nextInt(stations.length)];
  }

  calculateNextStation() {
    // İşlemler
  }
  calculateDirection() {}
}
