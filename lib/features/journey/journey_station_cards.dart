import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workspace/core/model/journey.dart';
import 'package:workspace/core/operation/station_operation.dart';
import 'package:workspace/core/providers/journey_provider.dart';
import 'package:workspace/features/journey/station_info.dart';
import 'package:workspace/core/model/station.dart';
import 'package:workspace/features/map.dart';

class JourneyStationCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IJourney? journey = Provider.of<JourneyProvider>(context).getData();
    final IStation currentStation = journey!.startStation;
    final double screenHeight = MediaQuery.of(context).size.height;

    final IStation nextStation = DataOperation()
        .calculateNextStation(journey.startStation, journey.journeyDirection);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity, // Tam genişlik
          height: screenHeight * 0.4, // %40 yükseklik
          child: const UserLocationMap(),
        ),
        // Current Station
        SizedBox(
          child: Card(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: StationInfo(
                    label: 'Current Station',
                    stationName: journey?.startStation.station ?? 'Unknown',
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
        const SizedBox(height: 15),
        const Text(
          '...',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          journey != null
              ? '${(journey!.endStation.id - journey!.startStation.id).abs()} Stations to go'
              : 'No journey data available',
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        Card(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: StationInfo(
                label: 'Arrival Station',
                stationName: journey?.endStation.station ?? 'Unknown',
              )),
        ),
      ],
    );
  }
}
