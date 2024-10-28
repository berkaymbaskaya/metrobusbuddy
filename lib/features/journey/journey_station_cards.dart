import 'package:flutter/material.dart';
import 'package:workspace/features/journey/station_info.dart';
import 'package:workspace/models/class/station.dart';

class JourneyStationCards extends StatelessWidget {
  final IStation previousStation;
  final IStation currentStation;
  final IStation nextStation;

  const JourneyStationCards({
    super.key,
    required this.currentStation,
    required this.previousStation,
    required this.nextStation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Previous Station
        Card(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: StationInfo(
            label: 'Previous Station',
            stationName: previousStation.station,
          ),
        )),
        const SizedBox(height: 15),
        // Current Station
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5, // Ekranın %80'i,
          child: Card(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: StationInfo(
                    label: 'Current Station',
                    stationName: currentStation.station,
                    isCurrent: true)),
          ),
        ),
        const SizedBox(height: 15),
        Card(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: StationInfo(
                label: 'Next Station',
                stationName: nextStation.station,
              )),
        ),
      ],
    );
  }
}
