import 'package:alarm_app/features/presentation/views/widgets/custom_toggle_tap.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int tabTextIndexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomToggleTap(
        selectedIndex: tabTextIndexSelected,
        selectedLabelIndex: (index) {
          tabTextIndexSelected = index;
          setState(() {});
        },
      ),
    );
  }
}
