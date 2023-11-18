import 'package:alarm_app/core/constant.dart';
import 'package:alarm_app/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class CustomToggleTap extends StatelessWidget {
  const CustomToggleTap(
      {super.key,
      required this.selectedLabelIndex,
      required this.selectedIndex});
  final dynamic Function(int) selectedLabelIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return FlutterToggleTab(
      width: MediaQuery.of(context).size.width * 0.2, // width in percent
      borderRadius: 9,
      height: 35,
      selectedIndex: selectedIndex,
      selectedBackgroundColors: const [kPriColor],
      selectedTextStyle: Fonts.textStyle15W6,
      unSelectedTextStyle: Fonts.textStyle15W5,
      labels: const ['Alarm', 'Goals'],
      selectedLabelIndex: selectedLabelIndex,
      isScroll: false, isShadowEnable: false,
      marginSelected: const EdgeInsets.all(2),
      unSelectedBackgroundColors: [const Color(0xffF2C94C).withOpacity(0.12)],
    );
  }
}
