import 'package:flutter/material.dart';

import 'doctor_app_theme.dart';
import 'screens/doctor_detail_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DoctorAppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/doctor_details': (context) => const DoctorDetailScreen(),
      },
    );
  }
}
