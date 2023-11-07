import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';
import 'package:shiftclock/widgets/custom_icon_button.dart';

class SeventeenScreen extends StatelessWidget {
  const SeventeenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSixty(context),
                  SizedBox(height: 36.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 724.v,
                              width: 372.h,
                              margin: EdgeInsets.only(right: 3.h),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            width: 146.h,
                                            margin: EdgeInsets.only(left: 24.h),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "Mandarin Chinese\nSpanish\n",
                                                      style: theme
                                                          .textTheme.bodyLarge!
                                                          .copyWith(
                                                              height: 3.44)),
                                                  TextSpan(
                                                      text: "English\n",
                                                      style: CustomTextStyles
                                                          .titleMediumPrimaryBold),
                                                  TextSpan(
                                                      text:
                                                          "Hindi\nArabic\nBengali\nPortuguese\nRussian\nFrench\nGerman\nJapanese\nKorean\nJavanese",
                                                      style: theme
                                                          .textTheme.bodyLarge!
                                                          .copyWith(
                                                              height: 3.44))
                                                ]),
                                                textAlign: TextAlign.left))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: 226.v,
                                            width: 372.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        bottom: Radius.circular(
                                                            20.h)),
                                                gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.54, 0.63),
                                                    end: Alignment(0.54, -0.11),
                                                    colors: [
                                                      theme
                                                          .colorScheme.onPrimary
                                                          .withOpacity(1),
                                                      theme
                                                          .colorScheme.onPrimary
                                                          .withOpacity(0)
                                                    ])))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 105.v, right: 21.h),
                                        child: CustomIconButton(
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            padding: EdgeInsets.all(8.h),
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgLocationPrimarycontainer)))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 30.v),
          CustomAppBar(
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  margin: EdgeInsets.only(left: 20.h, bottom: 5.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "Language"))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
