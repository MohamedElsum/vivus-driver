import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:vivus_driver/constants.dart';
import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class PickImageLayout extends StatelessWidget {
  const PickImageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: DottedBorder(
              color: DefaultThemeColors.dashedBorderColor,
              strokeWidth: 2,
              dashPattern: const [10, 7],
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Images.camera,
                      colorFilter: const ColorFilter.mode(
                        DefaultThemeColors.dashedBorderColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.getHeight(),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StepProgressIndicator(
                totalSteps: 4,
                currentStep: 1,
                padding: 0,
                customStep: (index, color, _) => index == 0
                    ? const Icon(
                        Icons.check_circle,
                        color: DefaultThemeColors.checkboxColor,
                        size: 15,
                        //color: DefaultThemeColors.dashedBorderColor,
                      )
                    : const Icon(
                        Icons.check_circle,
                        color: DefaultThemeColors.timerTextColor,
                        size: 15,
                      ),
              ),
              Text(
                '1/4',
                style: FontTextStyle.imagesNumber,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
