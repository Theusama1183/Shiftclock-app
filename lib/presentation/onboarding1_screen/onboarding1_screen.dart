import '../onboarding1_screen/widgets/slidersection_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding1Screen extends StatelessWidget {
  Onboarding1Screen({Key? key})
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
              SizedBox(height: 68.v),
              _buildSliderSection(context),
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
              SizedBox(height: 29.v),
              Text(
                "Stay update with notifications",
                style: CustomTextStyles.titleLargeOnErrorContainer,
              ),
              SizedBox(height: 10.v),
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
  Widget _buildSliderSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 334.v,
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
          return SlidersectionItemWidget();
        },
      ),
    );
  }
}
