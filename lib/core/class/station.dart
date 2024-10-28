abstract class IStation {
  IStation(Map<String, Object> map);

  int get id;
  String get station;
  double get lat;
  double get long;
}

class Station implements IStation {
  @override
  final int id;
  @override
  final String station;
  @override
  final double lat;
  @override
  final double long;

  Station({
    required this.id,
    required this.station,
    required this.lat,
    required this.long,
  });

  // JSON veya Map'ten `Station` nesnesi oluşturmak için factory constructor
  factory Station.fromMap(Map<String, dynamic> map) {
    return Station(
      id: map['id'] as int,
      station: map['station'] as String,
      lat: map['lat'] as double,
      long: map['long'] as double,
    );
  }
}
