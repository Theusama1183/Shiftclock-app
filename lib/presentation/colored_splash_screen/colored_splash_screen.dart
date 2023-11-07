import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';

class ColoredSplashScreen extends StatelessWidget {
  const ColoredSplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 70.h,
                        vertical: 328.v,
                      ),
                      decoration: AppDecoration.fillPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup3627,
                        height: 156.v,
                        width: 233.h,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.05,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup3628,
                      height: 378.v,
                      width: 302.h,
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
