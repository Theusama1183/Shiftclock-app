import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';
import 'package:shiftclock/widgets/custom_checkbox_button.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';
import 'package:shiftclock/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class ElevenScreen extends StatelessWidget {
  ElevenScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  bool tf = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      _buildTwelve(context),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19.h, vertical: 10.v),
                              child: Column(children: [
                                SizedBox(height: 10.v),
                                _buildTen(context,
                                    branchLocation: "Company Name",
                                    eastBlockBranch: "XYZ (Pvt)Ltd."),
                                SizedBox(height: 10.v),
                                _buildTen(context,
                                    branchLocation: "Branch Location",
                                    eastBlockBranch: "East Block Branch"),
                                SizedBox(height: 10.v),
                                _buildTen(context,
                                    branchLocation: "Employee ID",
                                    eastBlockBranch: "MN 100045"),
                                SizedBox(height: 10.v),
                                CustomFloatingTextField(
                                    controller: fullNameController,
                                    labelText: "Full Name",
                                    labelStyle: theme.textTheme.titleSmall!,
                                    hintText: "Full Name"),
                                SizedBox(height: 10.v),
                                CustomFloatingTextField(
                                    controller: emailController,
                                    labelText: "Email Address",
                                    labelStyle: theme.textTheme.titleSmall!,
                                    hintText: "Email Address",
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress),
                                SizedBox(height: 10.v),
                                _buildSix(context),
                                Spacer(),
                                CustomElevatedButton(
                                    text: "Update Profile".toUpperCase()),
                                SizedBox(height: 30.v),
                                SizedBox(
                                    height: 4.v,
                                    width: 126.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 126.h,
                                                  child: Divider())),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 126.h,
                                                  child: Divider()))
                                        ]))
                              ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
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
              title: AppbarTitle(text: "Edit Profile"))
        ]));
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.onPrimary.withOpacity(1),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: appTheme.blueGray100, width: 1.h),
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            height: 50.v,
            width: 335.h,
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 6.v),
                      child: CustomCheckboxButton(
                          alignment: Alignment.bottomLeft,
                          text: "300 5251234",
                          value: tf,
                          onChange: (value) {
                            tf = value;
                          }))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 29.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowDownBlack900,
                            height: 5.v,
                            width: 9.h,
                            margin: EdgeInsets.only(top: 23.v, bottom: 22.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: SizedBox(
                                height: 50.v,
                                child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: appTheme.blueGray100))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 23.h, top: 10.v, bottom: 26.v),
                            child: Text("Phone No.",
                                style: CustomTextStyles
                                    .bodySmallMontserratLightblue900))
                      ])))
            ])));
  }

  /// Common widget
  Widget _buildTen(
    BuildContext context, {
    required String branchLocation,
    required String eastBlockBranch,
  }) {
    return Container(
        width: 335.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
        decoration: AppDecoration.fillGray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text(branchLocation,
                  style: CustomTextStyles.bodySmallMontserratLightblue900
                      .copyWith(color: appTheme.lightBlue900)),
              Text(eastBlockBranch,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.black900))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
