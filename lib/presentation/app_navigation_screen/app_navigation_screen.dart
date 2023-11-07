import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          onboardingText: "1. Colored Splash",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.coloredSplashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "3.1 Onboarding ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "3.2 Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboarding1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "3.3 Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboarding2Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Four",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.fourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Five",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.fiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Six",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.sixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Seven",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.sevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Eight",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.eightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Nine",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.nineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Ten",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.tenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Eleven",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.elevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Twelve",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.twelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.thirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.seventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eighteenScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String onboardingText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  onboardingText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
