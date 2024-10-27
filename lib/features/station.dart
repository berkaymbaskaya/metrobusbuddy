import 'package:flutter/material.dart';
import 'package:workspace/models/class/station.dart';

class StationWidget extends StatelessWidget {
  final IStation previousStation;
  final IStation currentStation;
  final IStation nextStation;

  const StationWidget({
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
        StationInfo(
          label: 'Previous Station',
          stationName: previousStation.station,
        ),
        const SizedBox(height: 10),
        // Current Station
        StationInfo(
          label: 'Current Station',
          stationName: currentStation.station,
          isCurrent: true,
        ),
        const SizedBox(height: 10),
        StationInfo(label: 'Next Station', stationName: nextStation.station),
      ],
    );
  }
}

class StationInfo extends StatelessWidget {
  final String label;
  final String stationName;
  final bool isCurrent;

  const StationInfo({
    super.key,
    required this.label,
    required this.stationName,
    this.isCurrent = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          stationName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
            color: isCurrent ? Colors.blue : Colors.black,
          ),
        ),
      ],
    );
  }
}
