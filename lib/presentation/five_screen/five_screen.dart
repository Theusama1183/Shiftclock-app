import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/custom_drop_down.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';
import 'package:shiftclock/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FiveScreen extends StatelessWidget {
  FiveScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController employeeIdEditTextController = TextEditingController();

  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController mobileNumberEditTextController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 45.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 11.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroupPrimary,
                          height: 76.v,
                          width: 180.h),
                      SizedBox(height: 47.v),
                      Text("Create Account",
                          style: CustomTextStyles.titleLargePrimary),
                      SizedBox(height: 2.v),
                      Text("Please enter your personal data",
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 23.v),
                      CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 22.v, 20.h, 22.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdown,
                                  height: 5.v,
                                  width: 9.h)),
                          hintText: "Company Name",
                          items: dropdownItemList,
                          onChanged: (value) {}),
                      SizedBox(height: 10.v),
                      CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 22.v, 20.h, 22.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdown,
                                  height: 5.v,
                                  width: 9.h)),
                          hintText: "Branch Location",
                          items: dropdownItemList1,
                          onChanged: (value) {}),
                      SizedBox(height: 10.v),
                      _buildEmployeeIdEditText(context),
                      SizedBox(height: 10.v),
                      _buildFullNameEditText(context),
                      SizedBox(height: 10.v),
                      _buildEmailEditText(context),
                      SizedBox(height: 10.v),
                      _buildMobileNumberEditText(context),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildSignup(context)));
  }

  /// Section Widget
  Widget _buildEmployeeIdEditText(BuildContext context) {
    return CustomTextFormField(
        controller: employeeIdEditTextController,
        hintText: "Employee ID",
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v));
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameEditTextController,
        hintText: "Full Name",
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
        controller: emailEditTextController,
        hintText: "Email Address",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v));
  }

  /// Section Widget
  Widget _buildMobileNumberEditText(BuildContext context) {
    return CustomTextFormField(
        controller: mobileNumberEditTextController,
        hintText: "Mobile Number",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.phone,
        prefix: Padding(
            padding: EdgeInsets.fromLTRB(12.h, 13.v, 30.h, 13.v),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.fromLTRB(12.h, 13.v, 30.h, 13.v)),
              CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 5.v,
                  width: 9.h)
            ])),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        contentPadding: EdgeInsets.only(top: 14.v, right: 30.h, bottom: 14.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL10);
  }

  /// Section Widget
  Widget _buildSignup(BuildContext context) {
    return CustomElevatedButton(
        text: "Signup".toUpperCase(),
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 44.v));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
