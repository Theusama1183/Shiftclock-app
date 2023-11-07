import '../onboarding_screen/widgets/sliderwidget_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 46.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Text(
                    "Skip",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              _buildSliderWidget(context),
              SizedBox(height: 43.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 1,
                  axisDirection: Axis.horizontal,
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
                "Clock in and out",
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
                width: 157.h,
                text: "Next".toUpperCase(),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderWidget(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 383.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
          index,
          reason,
        ) {
          sliderIndex = index;
        },
      ),
      itemCount: 1,
      itemBuilder: (context, index, realIndex) {
        return SliderwidgetItemWidget();
      },
    );
  }
}
