import 'package:alarm_app/features/presentation/views/alarm_ringing_view.dart';
import 'package:alarm_app/features/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AlarmApp());
}

class AlarmApp extends StatelessWidget {
  const AlarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        AlarmRingingView.id: (context) => const AlarmRingingView()
      },
      initialRoute: HomeView.id,
      debugShowCheckedModeBanner: false,
    );
  }
}
