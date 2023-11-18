import 'package:alarm_app/core/constant.dart';
import 'package:alarm_app/core/util/images.dart';
import 'package:alarm_app/core/util/styles.dart';
import 'package:alarm_app/features/presentation/views/widgets/custom_Button.dart';
import 'package:flutter/material.dart';

class AlarmRingingViewBody extends StatelessWidget {
  const AlarmRingingViewBody(
      {super.key,
      required this.time,
      required this.title,
      required this.isSnooze});
  final String time;
  final String title;
  final bool isSnooze;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: boxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          Text(
            time,
            style: Fonts.textStyle96W8,
          ), //ringing time
          const Spacer(),
          Text(
            title,
            style: Fonts.textStyle36W7
                .copyWith(color: Colors.black.withOpacity(0.7)),
          ),
          const Spacer(),
          Visibility(
            visible: isSnooze,
            child: CustomButton(
                text: 'Snooze',
                backgroundColor: kSnoozeButtonColor.withOpacity(0.3),
                textColor: Colors.white),
          ), //snooze button
          const Spacer(),
          const CustomButton(
              width: double.infinity,
              text: 'Dismision',
              backgroundColor: kPriColor,
              textColor: Colors.black),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            Images.backgroundImage,
          ),
          fit: BoxFit.fill),
    );
  }
}
