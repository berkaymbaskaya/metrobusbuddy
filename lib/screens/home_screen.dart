import 'package:flutter/material.dart';
import 'package:workspace/core/operation/station_operation.dart';
import 'package:workspace/features/journey_start_form.dart';
import 'package:workspace/features/profile.dart';
import 'package:workspace/features/station.dart';
import 'package:workspace/models/class/station.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Sekmelere göre gösterilecek sayfaları tanımlıyoruz
  final List<Widget> _pages = <Widget>[
    Center(
      child: StationWidget(
        previousStation: DataOperation().getRandomStation(),
        currentStation: DataOperation().getRandomStation(),
        nextStation: DataOperation().getRandomStation(),
      ),
    ),
    const Center(child: JourneyStartWidget()),
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
      body: _pages[_selectedIndex], // Seçilen sayfayı göstermek için
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: 'Journey',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
