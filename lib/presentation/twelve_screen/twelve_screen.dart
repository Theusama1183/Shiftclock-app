import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';

class TwelveScreen extends StatelessWidget {
  const TwelveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSixtyOne(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 10.v),
                      child: Column(children: [
                        SizedBox(height: 11.v),
                        SizedBox(
                            width: 331.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Lorem ipsum dolor sit amet\n",
                                      style: CustomTextStyles
                                          .titleMediumBlack900SemiBold),
                                  TextSpan(
                                      text: "\n",
                                      style: CustomTextStyles
                                          .titleMediumBlack900Bold),
                                  TextSpan(
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n",
                                      style:
                                          CustomTextStyles.bodySmallBlack900),
                                  TextSpan(
                                      text: "\n",
                                      style: CustomTextStyles
                                          .titleMediumBlack900Bold),
                                  TextSpan(
                                      text: "Lorem Ipsum\n",
                                      style: CustomTextStyles
                                          .titleMediumBlack900SemiBold),
                                  TextSpan(
                                      text: "\n",
                                      style: CustomTextStyles
                                          .titleMediumBlack900Bold),
                                  TextSpan(
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                      style: CustomTextStyles.bodySmallBlack900
                                          .copyWith(height: 1.33))
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 63.v),
                        Text("Version v1.5.0",
                            style: CustomTextStyles.bodySmallBlack900_1),
                        SizedBox(height: 28.v),
                        SizedBox(
                            height: 4.v,
                            width: 126.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child:
                                      SizedBox(width: 126.h, child: Divider())),
                              Align(
                                  alignment: Alignment.center,
                                  child:
                                      SizedBox(width: 126.h, child: Divider()))
                            ]))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 17.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 24.v),
          CustomAppBar(
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  margin: EdgeInsets.only(left: 20.h, top: 3.v, bottom: 2.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "About"))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
