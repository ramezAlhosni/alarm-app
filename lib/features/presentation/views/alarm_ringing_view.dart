import 'package:alarm_app/features/presentation/views/widgets/alarm_ringing_view_body.dart';
import 'package:flutter/material.dart';

class AlarmRingingView extends StatelessWidget {
  const AlarmRingingView({super.key});
  static const id = 'AlarmRingingView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AlarmRingingViewBody(
        time: '6:15',
        title: 'wake up!',
        isSnooze: true,
      ),
    );
  }
}
