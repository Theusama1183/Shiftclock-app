import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';

class ThirteenScreen extends StatelessWidget {
  const ThirteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 70.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 49.v,
                  width: 198.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Congratulations!",
                          style: CustomTextStyles.titleLargePrimary,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Successful Account Created",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 62.v),
              SizedBox(
                height: 215.v,
                width: 219.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupLightBlue900,
                      height: 148.v,
                      width: 149.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 14.v,
                        right: 27.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupBlue400,
                      height: 53.v,
                      width: 54.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 14.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupBlue400,
                      height: 31.adaptSize,
                      width: 31.adaptSize,
                      alignment: Alignment.topRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupBlue400,
                      height: 31.adaptSize,
                      width: 31.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 2.h,
                        bottom: 28.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupBlue400,
                      height: 31.adaptSize,
                      width: 31.adaptSize,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 26.v),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildGetStartedButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Get Started".toUpperCase(),
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 44.v,
      ),
    );
  }
}
