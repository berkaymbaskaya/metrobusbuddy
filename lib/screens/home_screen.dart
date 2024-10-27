import 'package:flutter/material.dart';
import 'package:workspace/core/operation/station_operation.dart';
import 'package:workspace/features/station.dart';
import 'package:workspace/models/class/station.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: StationWidget(
          previousStation: DataOperation().getRandomStation(),
          currentStation: DataOperation().getRandomStation(),
          nextStation: DataOperation().getRandomStation(),
        ),
      ),
    );
  }
}
