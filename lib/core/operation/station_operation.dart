// lib/operations/data_operation.dart
import 'dart:math';
import 'package:workspace/models/class/station.dart';
import 'package:workspace/core/constant/metrobus_station_constant.dart';

class DataOperation {
  final List<Station> stations =
      metrobusStations.map((data) => Station.fromMap(data)).toList();
  // Örnek: Veri filtreleme işlevi
  List<Map<String, dynamic>> filterDataByKeyword(
      List<Map<String, dynamic>> data, String keyword) {
    return data.where((item) => item['name'].contains(keyword)).toList();
  }

  // Örnek: Veriyi dönüştürme işlevi
  List<String> extractTitles(List<Map<String, dynamic>> data) {
    return data.map((item) => item['title'].toString()).toList();
  }

  // Örnek: İstatistiksel hesaplama (ör. ortalama hesaplama)
  double calculateAverage(List<int> numbers) {
    if (numbers.isEmpty) return 0;
    int sum = numbers.reduce((a, b) => a + b);
    return sum / numbers.length;
  }

  IStation getRandomStation() {
    return stations[Random().nextInt(stations.length)];
  }
}
