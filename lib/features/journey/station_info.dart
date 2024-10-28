import 'package:flutter/material.dart';

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
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 5),
        Text(
          stationName,
          style: TextStyle(
              fontSize: 20,
              fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
              color: isCurrent ? Colors.blue : null),
        ),
      ],
    );
  }
}
