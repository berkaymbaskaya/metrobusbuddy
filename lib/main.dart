import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workspace/core/providers/bottom_navigation_provider.dart';
import 'package:workspace/core/providers/journey_provider.dart';
import 'package:workspace/core/providers/theme_provider.dart';
import 'package:workspace/features/journey/journey_start_form.dart';
import 'package:workspace/features/journey/journey_station_cards.dart';
import 'package:workspace/screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => JourneyProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavigationProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      themeMode: themeProvider.themeMode,
      home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => const HomeScreen(), // Ana sayfa rotası
        '/journey/form': (context) =>
            const JourneyStartWidget(), // Ana sayfa rotası
        '/journey/live': (context) => JourneyStationCards(), // Ana sayfa rotası
      },
    );
  }
}
