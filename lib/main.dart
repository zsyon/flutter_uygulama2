import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const MyHomePage(),
        theme: ThemeData(
          brightness: Brightness.dark,
          colorSchemeSeed: const Color.fromRGBO(188, 0, 74, 1.0),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimary,
                        width: 2)),
                hintStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController, // Metin rengini ayarla
              obscureText: !_isPasswordVisible, // Şifreyi gizle/göster
              decoration: InputDecoration(
                labelText: 'Şifre',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2)),
                hintStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
                border: const OutlineInputBorder(),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                  child: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: InkWell(
                onTap: () {
                  String enteredEmail = _emailController.text;
                  String enteredPassword = _passwordController.text == ""
                      ? ""
                      : _passwordController.text;
                  debugPrint('Girilen email: $enteredEmail');
                  debugPrint('Girilen şifre: $enteredPassword');
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(188, 0, 74, 1.0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                        child: Text('Giriş Yap', style: TextStyle()))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
