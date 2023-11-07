import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';
import 'package:shiftclock/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class EightScreen extends StatelessWidget {
  EightScreen({Key? key}) : super(key: key);

  TextEditingController dateRowController = TextEditingController();

  TextEditingController dateRowController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFiftyThree(context),
                  Container(
                      padding: EdgeInsets.all(20.h),
                      child: Column(children: [
                        _buildDate(context),
                        SizedBox(height: 20.v),
                        Container(
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildPresent(context),
                                  _buildFortySeven(context)
                                ])),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildFiftyThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 29.v),
          CustomAppBar(
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  margin: EdgeInsets.only(left: 20.h, bottom: 5.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "Attendance Report"))
        ]));
  }

  /// Section Widget
  Widget _buildDateRow(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: CustomFloatingTextField(
                controller: dateRowController,
                labelText: "Start Date",
                labelStyle: theme.textTheme.titleSmall!,
                hintText: "Start Date")));
  }

  /// Section Widget
  Widget _buildDateRow1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: CustomFloatingTextField(
                controller: dateRowController1,
                labelText: "End Date",
                labelStyle: theme.textTheme.titleSmall!,
                hintText: "End Date",
                textInputAction: TextInputAction.done)));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildDateRow(context), _buildDateRow1(context)]);
  }

  /// Section Widget
  Widget _buildPresentButton1(BuildContext context) {
    return CustomElevatedButton(
        height: 20.v,
        width: 44.h,
        text: "Present",
        margin: EdgeInsets.only(left: 16.h),
        buttonStyle: CustomButtonStyles.fillGreen,
        buttonTextStyle: theme.textTheme.labelSmall!);
  }

  /// Section Widget
  Widget _buildPresentButton2(BuildContext context) {
    return CustomElevatedButton(
        height: 20.v,
        width: 44.h,
        text: "Present",
        margin: EdgeInsets.only(left: 9.h),
        buttonStyle: CustomButtonStyles.fillGreen,
        buttonTextStyle: theme.textTheme.labelSmall!);
  }

  /// Section Widget
  Widget _buildAbsentButton1(BuildContext context) {
    return CustomElevatedButton(
        height: 20.v,
        width: 44.h,
        text: "Absent",
        margin: EdgeInsets.only(left: 11.h),
        buttonStyle: CustomButtonStyles.fillOrange,
        buttonTextStyle: CustomTextStyles.labelSmallOrange300);
  }

  /// Section Widget
  Widget _buildPresentButton3(BuildContext context) {
    return CustomElevatedButton(
        height: 20.v,
        width: 44.h,
        text: "Present",
        margin: EdgeInsets.only(left: 15.h),
        buttonStyle: CustomButtonStyles.fillGreen,
        buttonTextStyle: theme.textTheme.labelSmall!);
  }

  /// Section Widget
  Widget _buildAbsentButton2(BuildContext context) {
    return CustomElevatedButton(
        height: 20.v,
        width: 44.h,
        text: "Absent",
        margin: EdgeInsets.only(left: 11.h),
        buttonStyle: CustomButtonStyles.fillOrange,
        buttonTextStyle: CustomTextStyles.labelSmallOrange300);
  }

  /// Section Widget
  Widget _buildLateButton(BuildContext context) {
    return CustomElevatedButton(
        height: 20.v,
        width: 44.h,
        text: "Late",
        margin: EdgeInsets.only(left: 7.h),
        buttonStyle: CustomButtonStyles.fillRed,
        buttonTextStyle: CustomTextStyles.labelSmallRed500);
  }

  /// Section Widget
  Widget _buildPresent(BuildContext context) {
    return SizedBox(
        height: 364.v,
        width: 335.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 12.v),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("Date",
                                      style: theme.textTheme.labelMedium)),
                              Spacer(flex: 53),
                              Text("Clock-In",
                                  style: theme.textTheme.labelMedium),
                              Spacer(flex: 46),
                              Text("Clock-Out",
                                  style: theme.textTheme.labelMedium),
                              Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Text("Break",
                                      style: theme.textTheme.labelMedium)),
                              Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text("Status",
                                      style: theme.textTheme.labelMedium))
                            ])),
                    Container(
                        margin: EdgeInsets.only(left: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.h, vertical: 17.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.h, top: 2.v, bottom: 1.v),
                                  child: Text("9 Aug",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.h, top: 2.v, bottom: 2.v),
                                  child: Text("06:00 AM",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 28.h, top: 2.v, bottom: 2.v),
                                  child: Text("04:00 PM",
                                      style: theme.textTheme.labelLarge)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  child: Text("1hr",
                                      style: theme.textTheme.labelLarge)),
                              _buildPresentButton1(context)
                            ])),
                    Container(
                        margin: EdgeInsets.only(left: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.h, vertical: 17.v),
                        decoration: AppDecoration.fillPrimaryContainer,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.h, top: 2.v, bottom: 1.v),
                                  child: Text("10 Aug",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.h, top: 2.v, bottom: 2.v),
                                  child: Text("06:10 AM",
                                      style: theme.textTheme.labelLarge)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  child: Text("05:00 PM",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.h, top: 2.v, bottom: 2.v),
                                  child: Text("0.5hr",
                                      style: theme.textTheme.labelLarge)),
                              _buildPresentButton2(context)
                            ])),
                    Container(
                        margin: EdgeInsets.only(left: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.h, vertical: 17.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 4.h, top: 2.v, bottom: 1.v),
                                  child: Text("11 Aug",
                                      style: theme.textTheme.labelLarge)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  child: Text("06:20 AM",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 29.h, top: 2.v, bottom: 2.v),
                                  child: Text("04:00 PM",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 26.h, top: 2.v, bottom: 2.v),
                                  child: Text("1.5hr",
                                      style: theme.textTheme.labelLarge)),
                              _buildAbsentButton1(context)
                            ])),
                    Container(
                        margin: EdgeInsets.only(left: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.h, vertical: 17.v),
                        decoration: AppDecoration.fillPrimaryContainer,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h, top: 3.v),
                                  child: Text("12 Aug",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.h, top: 2.v, bottom: 2.v),
                                  child: Text("07:10 AM",
                                      style: theme.textTheme.labelLarge)),
                              Spacer(flex: 50),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  child: Text("04:10 PM",
                                      style: theme.textTheme.labelLarge)),
                              Spacer(flex: 49),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  child: Text("2hr",
                                      style: theme.textTheme.labelLarge)),
                              _buildPresentButton3(context)
                            ])),
                    SizedBox(height: 41.v),
                    Container(
                        margin: EdgeInsets.only(left: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.h, vertical: 17.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 3.h, top: 2.v, bottom: 1.v),
                                  child: Text("13 Aug",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 29.h, top: 2.v, bottom: 2.v),
                                  child: Text("05:50 AM",
                                      style: theme.textTheme.labelLarge)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  child: Text("04:11 PM",
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 29.h, top: 2.v, bottom: 2.v),
                                  child: Text("1.5hr",
                                      style: theme.textTheme.labelLarge)),
                              _buildAbsentButton2(context)
                            ]))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 1.h, top: 310.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.h, vertical: 17.v),
                  decoration: AppDecoration.fillGray,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                            child: Text("14 Aug",
                                style: theme.textTheme.labelLarge)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 29.h, top: 2.v, bottom: 2.v),
                            child: Text("06:05 AM",
                                style: theme.textTheme.labelLarge)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 29.h, top: 2.v, bottom: 2.v),
                            child: Text("04:50 PM",
                                style: theme.textTheme.labelLarge)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 23.h, top: 2.v, bottom: 2.v),
                            child: Text("1.25hr",
                                style: theme.textTheme.labelLarge)),
                        _buildLateButton(context)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildPresentButton4(BuildContext context) {
    return CustomElevatedButton(
        height: 20.v,
        width: 44.h,
        text: "Present",
        margin: EdgeInsets.only(left: 7.h),
        buttonStyle: CustomButtonStyles.fillGreen,
        buttonTextStyle: theme.textTheme.labelSmall!);
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 17.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.customBorderBL20),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, top: 2.v, bottom: 1.v),
              child: Text("15 Aug", style: theme.textTheme.labelLarge)),
          Padding(
              padding: EdgeInsets.only(left: 29.h, top: 2.v, bottom: 2.v),
              child: Text("06:03 AM", style: theme.textTheme.labelLarge)),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Text("04:02 PM", style: theme.textTheme.labelLarge)),
          Padding(
              padding: EdgeInsets.only(left: 22.h, top: 2.v, bottom: 2.v),
              child: Text("1.20hr", style: theme.textTheme.labelLarge)),
          _buildPresentButton4(context)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
