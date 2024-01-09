import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 2, left: 2, right: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(12), // Kenarları yuvarlak yapma
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Gölge rengi
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // Gölge offset'i
                  ),
                ],
              ),
              height: 50,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'RESTORANLARIMIZ',
                  style: TextStyle(
                    color: Colors.purple, // Mor renk
                    fontWeight: FontWeight.bold, // Kalın font
                    fontSize: 18, // Font büyüklüğü
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(top: 2, left: 2, right: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(12), // Kenarları yuvarlak yapma
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Gölge rengi
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // Gölge offset'i
                  ),
                ],
              ),
              height: 120,
              width: 330,
              child: const Center(
                child: Text(
                  'RESTORANLARIMIZzzzzzzzzz',
                  style: TextStyle(
                    color: Colors.purple, // Mor renk
                    fontWeight: FontWeight.bold, // Kalın font
                    fontSize: 18, // Font büyüklüğü
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(top: 2, left: 2, right: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(12), // Kenarları yuvarlak yapma
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Gölge rengi
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // Gölge offset'i
                  ),
                ],
              ),
              height: 120,
              width: 330,
              child: const Center(
                child: Text(
                  'RESTORANLARIMIZ',
                  style: TextStyle(
                    color: Colors.purple, // Mor renk
                    fontWeight: FontWeight.bold, // Kalın font
                    fontSize: 18, // Font büyüklüğü
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(top: 2, left: 2, right: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(12), // Kenarları yuvarlak yapma
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Gölge rengi
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // Gölge offset'i
                  ),
                ],
              ),
              height: 120,
              width: 330,
              child: const Center(
                child: Text(
                  'RESTORANLARIMIZ',
                  style: TextStyle(
                    color: Colors.purple, // Mor renk
                    fontWeight: FontWeight.bold, // Kalın font
                    fontSize: 18, // Font büyüklüğü
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
