import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title.dart';
import 'package:shiftclock/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';

class SevenScreen extends StatelessWidget {
  const SevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSixtyFive(context),
                  Container(
                      padding: EdgeInsets.all(20.h),
                      child: Column(children: [
                        _buildYourAreClocked(context),
                        SizedBox(height: 22.v),
                        Text("10 Oct 2023".toUpperCase(),
                            style: CustomTextStyles.labelLargePoppinsBlack900),
                        SizedBox(height: 3.v),
                        _buildTime(context),
                        SizedBox(height: 5.v)
                      ]))
                ])),
            bottomNavigationBar: _buildTelevision(context)));
  }

  /// Section Widget
  Widget _buildSixtyFive(BuildContext context) {
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
              title: AppbarTitle(text: "Attendance"),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgCalendar,
                    margin: EdgeInsets.fromLTRB(21.h, 5.v, 21.h, 2.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildYourAreClocked(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 48.h, vertical: 20.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup3633,
              height: 80.adaptSize,
              width: 80.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 19.v, bottom: 25.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your are Clocked In",
                        style: CustomTextStyles.titleSmallPoppinsPrimary),
                    Text("East Block Branch",
                        style: CustomTextStyles.bodySmallBlack900_3)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 39.v),
              child: Column(children: [
                Text("06:15 AM".toUpperCase(),
                    style: CustomTextStyles.labelLargePoppinsBlack900),
                SizedBox(height: 28.v),
                Text("11:00 AM".toUpperCase(),
                    style: CustomTextStyles.labelLargePoppinsBlack900),
                SizedBox(height: 26.v),
                Text("12:15 pM".toUpperCase(),
                    style: CustomTextStyles.labelLargePoppinsBlack900)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 5.v),
              child: Column(children: [
                SizedBox(
                    height: 126.v,
                    width: 15.h,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              height: 119.v,
                              child: VerticalDivider(
                                  width: 3.h,
                                  thickness: 3.v,
                                  color: appTheme.gray500))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(7.h)))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 21.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        height: 15.adaptSize,
                                        width: 15.adaptSize,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            borderRadius:
                                                BorderRadius.circular(7.h),
                                            border: Border.all(
                                                color: appTheme.gray500,
                                                width: 1.h))),
                                    SizedBox(height: 30.v),
                                    Container(
                                        height: 15.adaptSize,
                                        width: 15.adaptSize,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius:
                                                BorderRadius.circular(7.h)))
                                  ])))
                    ])),
                SizedBox(height: 5.v),
                SizedBox(child: Divider(color: appTheme.gray500)),
                SizedBox(height: 5.v),
                SizedBox(child: Divider(color: appTheme.gray500))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 39.v),
              child: Column(children: [
                Text("Clocked In",
                    style: CustomTextStyles.labelLargePoppinsPrimary),
                SizedBox(height: 28.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Break",
                        style: CustomTextStyles.labelLargePoppinsBlack900)),
                SizedBox(height: 27.v),
                Text("Clocked In",
                    style: CustomTextStyles.labelLargePoppinsPrimary)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildTelevision(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 62.h, right: 37.h, bottom: 44.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              margin: EdgeInsets.only(top: 40.v, bottom: 15.v),
              decoration: AppDecoration.fillOrange300
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 41.v,
                    width: 43.h),
                Padding(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Text("Start Break".toUpperCase(),
                        style: theme.textTheme.titleMedium))
              ])),
          Container(
              margin: EdgeInsets.only(left: 33.h),
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIconIonicIosLogOut,
                        height: 40.v,
                        width: 48.h,
                        margin: EdgeInsets.only(top: 25.v)),
                    Padding(
                        padding: EdgeInsets.only(top: 20.v),
                        child: Text("Clock out".toUpperCase(),
                            style: theme.textTheme.titleMedium))
                  ]))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
