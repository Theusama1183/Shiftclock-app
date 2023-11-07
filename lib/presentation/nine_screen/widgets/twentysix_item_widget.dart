import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';

// ignore: must_be_immutable
class TwentysixItemWidget extends StatelessWidget {
  const TwentysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 24.adaptSize,
        width: 24.adaptSize,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 24.adaptSize,
                width: 24.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                  border: Border.all(
                    color: theme.colorScheme.primaryContainer.withOpacity(1),
                    width: 2.h,
                    strokeAlign: strokeAlignCenter,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 5.v,
              width: 8.h,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
