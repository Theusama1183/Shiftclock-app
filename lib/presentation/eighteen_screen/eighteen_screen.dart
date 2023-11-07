import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';
import 'package:shiftclock/widgets/custom_drop_down.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';
import 'package:shiftclock/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class EighteenScreen extends StatelessWidget {
  EighteenScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSixtyNine(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 18.v),
                      child: Column(children: [
                        _buildSeventyThree(context),
                        SizedBox(height: 20.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("Notification Schedule",
                                    style:
                                        CustomTextStyles.titleLargeBlack900))),
                        SizedBox(height: 14.v),
                        Container(
                            width: 323.h,
                            margin: EdgeInsets.only(left: 1.h, right: 10.h),
                            child: Text(
                                "You'll only receive notifications in the hours you choose. In your inactive hours, notifications will be paused.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.75))),
                        SizedBox(height: 15.v),
                        _buildAllowNotifications(context),
                        SizedBox(height: 36.v),
                        _buildZeroNineZeroZeroAM(context),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 17.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 23.v),
          CustomAppBar(
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  margin: EdgeInsets.only(left: 20.h, top: 3.v, bottom: 2.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "Notifications"))
        ]));
  }

  /// Section Widget
  Widget _buildSeventyThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Notify Me About…",
                  style: CustomTextStyles.titleLargeBlack900),
              SizedBox(height: 19.v),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    width: 147.h,
                    margin: EdgeInsets.only(top: 3.v),
                    child: Text("All New Messages\r\nDaily reminder\nNothing",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style:
                            theme.textTheme.bodyLarge!.copyWith(height: 3.00))),
                Padding(
                    padding: EdgeInsets.only(left: 117.h, bottom: 95.v),
                    child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgLocationPrimarycontainer)))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildAllowNotifications(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 14.v, bottom: 11.v),
          child: Text("Allow Notifications",
              style: CustomTextStyles.titleMediumBlack900)),
      CustomDropDown(
          width: 125.h,
          icon: Container(
              margin: EdgeInsets.fromLTRB(15.h, 20.v, 12.h, 20.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconIoniciosarrowdown,
                  height: 4.v,
                  width: 8.h)),
          hintText: "Everyday",
          items: dropdownItemList,
          borderDecoration: DropDownStyleHelper.outlineGray,
          onChanged: (value) {})
    ]);
  }

  /// Section Widget
  Widget _buildZeroNineZeroZeroAM(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 14.v, bottom: 11.v),
              child:
                  Text("Timing", style: CustomTextStyles.titleMediumBlack900)),
          Spacer(),
          CustomElevatedButton(
              width: 111.h,
              text: "09:00 AM",
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 19.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconIoniciosarrowdown,
                      height: 4.v,
                      width: 8.h)),
              buttonStyle: CustomButtonStyles.outlineGray,
              buttonTextStyle: theme.textTheme.bodyMedium!),
          Container(
              width: 111.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(vertical: 13.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text("10:00 PM",
                            style: theme.textTheme.bodyMedium)),
                    CustomImageView(
                        imagePath: ImageConstant.imgIconIoniciosarrowdown,
                        height: 4.v,
                        width: 8.h,
                        margin: EdgeInsets.only(top: 9.v, bottom: 8.v))
                  ]))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
