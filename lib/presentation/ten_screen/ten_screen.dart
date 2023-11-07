import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';
import 'package:shiftclock/widgets/custom_icon_button.dart';
import 'package:shiftclock/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TenScreen extends StatelessWidget {
  TenScreen({Key? key}) : super(key: key);

  TextEditingController editProfileController = TextEditingController();

  TextEditingController notificationsController = TextEditingController();

  TextEditingController securityController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController aboutController = TextEditingController();

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
                  _buildEighteen(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 10.v),
                      child: Column(children: [
                        SizedBox(height: 10.v),
                        SizedBox(
                            height: 150.adaptSize,
                            width: 150.adaptSize,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse19150x150,
                                      height: 150.adaptSize,
                                      width: 150.adaptSize,
                                      radius: BorderRadius.circular(75.h),
                                      alignment: Alignment.center),
                                  CustomIconButton(
                                      height: 36.adaptSize,
                                      width: 36.adaptSize,
                                      padding: EdgeInsets.all(9.h),
                                      decoration: IconButtonStyleHelper
                                          .outlineOnPrimary,
                                      alignment: Alignment.bottomRight,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgGroup16))
                                ])),
                        SizedBox(height: 11.v),
                        Text("John Doe",
                            style: CustomTextStyles.titleLargeLightblue900),
                        Text("MN 100045",
                            style: CustomTextStyles.bodyMediumBlack900),
                        SizedBox(height: 42.v),
                        _buildEditProfile(context),
                        SizedBox(height: 10.v),
                        _buildNotifications(context),
                        SizedBox(height: 10.v),
                        _buildSecurity(context),
                        SizedBox(height: 10.v),
                        _buildLanguage(context),
                        SizedBox(height: 8.v),
                        _buildAbout(context),
                        SizedBox(height: 10.v),
                        _buildSeventeen(context),
                        SizedBox(height: 40.v),
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
  Widget _buildEighteen(BuildContext context) {
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
              title: AppbarTitle(text: "Profile"))
        ]));
  }

  /// Section Widget
  Widget _buildEditProfile(BuildContext context) {
    return CustomTextFormField(
        controller: editProfileController,
        hintText: "Edit Profile",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(25.h, 17.v, 22.h, 17.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser, height: 16.v, width: 13.h)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 22.h, 18.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose, height: 12.v, width: 7.h)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGray);
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return CustomTextFormField(
        controller: notificationsController,
        hintText: "Notifications",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(25.h, 19.v, 21.h, 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgNotificationPrimary,
                height: 16.v,
                width: 15.h)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 19.v, 22.h, 19.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose, height: 12.v, width: 7.h)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGray);
  }

  /// Section Widget
  Widget _buildSecurity(BuildContext context) {
    return CustomTextFormField(
        controller: securityController,
        hintText: "Security",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 15.v, 21.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconMaterialsecurity,
                height: 20.v,
                width: 16.h)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 19.v, 22.h, 19.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose, height: 12.v, width: 7.h)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGray);
  }

  /// Section Widget
  Widget _buildLanguage(BuildContext context) {
    return CustomTextFormField(
        controller: languageController,
        hintText: "Language",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(22.h, 15.v, 19.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgGlobe,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 19.v, 22.h, 19.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose, height: 12.v, width: 7.h)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGray);
  }

  /// Section Widget
  Widget _buildAbout(BuildContext context) {
    return CustomTextFormField(
        controller: aboutController,
        hintText: "About",
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(22.h, 15.v, 19.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconIoniciosinformationcircle,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 19.v, 27.h, 19.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose, height: 12.v, width: 7.h)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGray);
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgFramePrimary24x24,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 4.v),
              child: Text("Logout", style: theme.textTheme.bodyMedium)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 12.v,
              width: 7.h,
              margin: EdgeInsets.only(top: 6.v, right: 7.h, bottom: 6.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
