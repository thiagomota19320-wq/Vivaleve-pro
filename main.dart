import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const VivaLeveApp());
}

class VivaLeveApp extends StatelessWidget {
  const VivaLeveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VivaLeve PRO',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: const LoginScreen(),
    );
  }
}
