import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({Key? key})
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 23.v),
              _buildWidgetStack(context),
              SizedBox(height: 85.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor:
                        theme.colorScheme.primaryContainer.withOpacity(1),
                    dotColor: appTheme.gray200,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Text(
                "Detailed Information",
                style: CustomTextStyles.titleLargeOnErrorContainer,
              ),
              SizedBox(height: 13.v),
              SizedBox(
                width: 222.h,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing eli",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.81,
                  ),
                ),
              ),
              SizedBox(height: 45.v),
              CustomElevatedButton(
                width: 180.h,
                text: "Get Started".toUpperCase(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 342.v,
        width: 360.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup645,
              height: 334.v,
              width: 360.h,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFramePrimary,
              height: 303.v,
              width: 301.h,
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
    );
  }
}
