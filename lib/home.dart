import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Appbar'ın rengi burada ayarlanıyor
      ),
      body: Center(
        child: Text('Home Screen  aaaaaaaaaa'),
      ),
      backgroundColor: Colors.white, // Arka plan rengi burada ayarlanıyor
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
