import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';
import 'package:shiftclock/widgets/custom_outlined_button.dart';
import 'package:shiftclock/widgets/custom_text_form_field.dart';

class FourScreen extends StatelessWidget {
  FourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 45.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 34.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroupPrimary,
                  height: 76.v,
                  width: 180.h,
                ),
                SizedBox(height: 48.v),
                Text(
                  "Login to your account",
                  style: CustomTextStyles.titleLargePrimary,
                ),
                Text(
                  "Enter your username & password to continue",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 24.v),
                _buildUsername(context),
                SizedBox(height: 10.v),
                _buildPassword(context),
                SizedBox(height: 10.v),
                _buildLogin(context),
                SizedBox(height: 28.v),
                _buildBiometricLogin(context),
                SizedBox(height: 10.v),
                _buildPINPattern(context),
                SizedBox(height: 48.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "No account yet?",
                        style: CustomTextStyles.titleSmallPoppins_1,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Signup here",
                        style: CustomTextStyles
                            .titleSmallPoppinsPrimaryContainer
                            .copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Terms Conditions",
                        style: CustomTextStyles.bodySmallBlack900.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: " & ",
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      TextSpan(
                        text: "Privacy Policy.",
                        style: CustomTextStyles.bodySmallBlack900.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsername(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: CustomTextFormField(
        controller: usernameController,
        hintText: "Username ",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(20.h, 17.v, 22.h, 17.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 16.v,
            width: 13.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 14.v,
          right: 30.h,
          bottom: 14.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 17.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 15.v, 20.h, 15.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup90,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
      text: "Login".toUpperCase(),
      margin: EdgeInsets.symmetric(horizontal: 4.h),
    );
  }

  /// Section Widget
  Widget _buildBiometricLogin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 11.v,
            ),
            child: SizedBox(
              width: 100.h,
              child: Divider(
                color: appTheme.blueGray100,
              ),
            ),
          ),
          Text(
            "Biometric Login",
            style: CustomTextStyles.titleSmallPoppins,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 11.v,
            ),
            child: SizedBox(
              width: 100.h,
              child: Divider(
                color: appTheme.blueGray100,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPinPattern(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "PIN/Pattern",
        margin: EdgeInsets.only(right: 7.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 10.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgIconIoniciosfingerprint,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFaceID(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Face ID",
        margin: EdgeInsets.only(left: 7.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFilter,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPINPattern(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPinPattern(context),
          _buildFaceID(context),
        ],
      ),
    );
  }
}
