import 'package:alarm_app/features/presentation/views/alarm_ringing_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AlarmApp());
}

class AlarmApp extends StatelessWidget {
  const AlarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlarmRingingView(),
    );
  }
}
