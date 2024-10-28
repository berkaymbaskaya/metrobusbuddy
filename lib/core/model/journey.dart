import 'package:workspace/core/enum/journey_direction_enum.dart';
import 'package:workspace/core/model/station.dart';
import 'package:workspace/core/operation/station_operation.dart';

class IJourney {
  final IStation startStation;
  final IStation endStation;
  JourneyDirectionEnum journeyDirection = JourneyDirectionEnum.bs;
  late double journeyDuration = 0.00;
  // Constructor ile nesne oluşturma
  IJourney({
    required this.startStation,
    required this.endStation,
  }) {
    journeyDirection =
        DataOperation().calculateDirection(startStation, endStation);
  }
}
