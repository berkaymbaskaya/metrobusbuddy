import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workspace/core/operation/station_operation.dart';
import 'package:workspace/core/providers/bottom_navigation_provider.dart';
import 'package:workspace/features/journey/journey_start_form.dart';
import 'package:workspace/features/profile.dart';
import 'package:workspace/features/journey/journey_station_cards.dart';
import 'package:workspace/core/model/station.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Sekmelere göre gösterilecek sayfaları tanımlıyoruz
  final List<Widget> _pages = <Widget>[
    const Center(child: JourneyStartWidget()),
    Center(
      child: JourneyStationCards(),
    ),
    const Center(child: ProfileScreen()),
  ];

  // Sekme seçildiğinde sayfayı değiştirmek için kullanılan fonksiyon
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Consumer<BottomNavigationProvider>(
        builder: (context, provider, child) {
          return IndexedStack(
            index: provider.selectedIndex,
            children: _pages,
          );
        },
      ), // Seçilen sayfayı göstermek için
      bottomNavigationBar: Consumer<BottomNavigationProvider>(
        builder: (context, provider, child) {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.navigation),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Journey',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: provider.selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: provider.setData,
          );
        },
      ),
    );
  }
}
