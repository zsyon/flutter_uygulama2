import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/restorant_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const HomePage(),
    const Text(
      'Index 1: Search',
      style: TextStyle(fontSize: 30, color: Colors.purple),
    ),
    const Text(
      'Index 2: Profile',
      style: TextStyle(fontSize: 30, color: Colors.purple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => setState(() => selectedIndex = index),
        backgroundColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
      body: screens.elementAt(selectedIndex),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2, left: 2, right: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            height: 50,
            width: double.infinity,
            child: const Center(
              child: Text(
                'RESTORANLARIMIZ',
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RestorantContainer(
                image:
                    'https://cdn.pixabay.com/photo/2016/11/18/14/05/brick-wall-1834784_960_720.jpg',
                title: 'Restoran 1',
              ),
              RestorantContainer(
                image:
                    'https://cdn.pixabay.com/photo/2016/11/18/14/05/brick-wall-1834784_960_720.jpg',
                title: 'Restoran 2',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
