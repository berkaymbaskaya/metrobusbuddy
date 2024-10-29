// lib/operations/data_operation.dart
import 'dart:math';
import 'package:workspace/core/model/station.dart';
import 'package:workspace/core/constant/metrobus_station_constant.dart';
import 'package:workspace/core/enum/journey_direction_enum.dart';

class DataOperation {
  final List<Station> stations =
      metrobusStations.map((data) => Station.fromMap(data)).toList();
  // Örnek: Veri filtreleme işlevi

  IStation getRandomStation() {
    return stations[Random().nextInt(stations.length)];
  }

  calculateNextStation(
      IStation currentStation, JourneyDirectionEnum direction) {
    if (direction == JourneyDirectionEnum.sb) {
      return stations
          .firstWhere((element) => element.id == currentStation.id + 1);
    } else {
      return stations
          .firstWhere((element) => element.id == currentStation.id - 1);
    }
  }

  calculateDirection(IStation startStation, IStation endStation) {
    if (startStation.id > endStation.id) {
      return JourneyDirectionEnum.bs;
    } else {
      return JourneyDirectionEnum.sb;
    }
  }
}
