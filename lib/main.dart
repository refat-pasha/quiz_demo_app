import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/welcome.dart';
import 'pages/home.dart';
import 'pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final hasUser =
      prefs.containsKey('userName') && prefs.containsKey('userEmail');

  runApp(MyApp(startAtHome: hasUser));
}

class MyApp extends StatelessWidget {
  final bool startAtHome;
  const MyApp({Key? key, required this.startAtHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: startAtHome ? const Home() : const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
