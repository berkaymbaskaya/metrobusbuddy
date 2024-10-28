import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workspace/core/constant/metrobus_station_constant.dart';
import 'package:workspace/core/enum/bottom_tabbar_enum.dart';
import 'package:workspace/core/model/journey.dart';
import 'package:workspace/core/providers/bottom_navigation_provider.dart';
import 'package:workspace/core/providers/journey_provider.dart';
import 'package:workspace/features/profile.dart';
import 'package:workspace/core/model/station.dart';

class JourneyStartWidget extends StatefulWidget {
  const JourneyStartWidget({super.key});

  @override
  _JourneyStartWidget createState() => _JourneyStartWidget();
}

class _JourneyStartWidget extends State<JourneyStartWidget> {
  IStation? _startStation; // Başlangıç durağı
  IStation? _endStation; // Varış durağı

  void _startTravel() {
    if (_startStation != null &&
        _endStation != null &&
        _startStation != _endStation) {
      final journey =
          IJourney(startStation: _startStation!, endStation: _endStation!);
      setJourney(journey);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                'Seyahat $_startStation durağından $_endStation durağına başlatıldı!')),
      );
      // BottomNavigationProvider().setData(BottomTabbarEnum.journeyLive.index);
      context
          .read<BottomNavigationProvider>()
          .setData(BottomTabbarEnum.journeyLive.index);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lütfen geçerli duraklar seçin.')),
      );
    }
  }

  setJourney(IJourney value) {
    context.read<JourneyProvider>().setData(value);
  }

  onChangeEndStation(IStation? value) {
    setState(() {
      _endStation = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Başlangıç durağı seçimi
          DropdownButtonFormField<IStation>(
            decoration: const InputDecoration(labelText: 'Başlangıç Durağı'),
            value: _startStation,
            items: stationList.map((station) {
              return DropdownMenuItem(
                value: station,
                child: Text(station.station),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _startStation = value;
              });
            },
          ),
          const SizedBox(height: 20),
          // Varış durağı seçimi
          DropdownButtonFormField<IStation>(
              decoration: const InputDecoration(labelText: 'Varış Durağı'),
              disabledHint: const Text('Lütfen başlangıç durağını seçin'),
              value: _endStation,
              items: stationList.map((station) {
                return DropdownMenuItem(
                  value: station,
                  child: Text(station.station),
                );
              }).toList(),
              onChanged: _startStation != null
                  ? (value) {
                      onChangeEndStation(value);
                    }
                  : null),
          const SizedBox(height: 30),
          // Seyahati Başlat butonu
          ElevatedButton(
            onPressed: _startTravel,
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
            child: const Text('Seyahati Başlat'),
          ),
        ],
      ),
    );
  }
}
