import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';
import 'package:shiftclock/widgets/custom_elevated_button.dart';

class SixScreen extends StatelessWidget {
  const SixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNotificationStack(context),
              _buildSixColumn(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildMarkAttendanceButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationStack(BuildContext context) {
    return SizedBox(
      height: 352.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 45.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup15,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 40.v,
                    title: AppbarTitleImage(
                      imagePath: ImageConstant.imgGroup,
                      margin: EdgeInsets.only(left: 20.h),
                    ),
                    actions: [
                      Container(
                        height: 22.v,
                        width: 18.h,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          top: 8.v,
                          bottom: 10.v,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgNotification,
                              height: 19.v,
                              width: 17.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                right: 1.h,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 8.adaptSize,
                                width: 8.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  bottom: 14.v,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primaryContainer
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
                                  border: Border.all(
                                    color: theme.colorScheme.primary,
                                    width: 1.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppbarTrailingCircleimage(
                        imagePath: ImageConstant.imgEllipse19,
                        margin: EdgeInsets.only(
                          left: 14.h,
                          right: 20.h,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.v),
                  Text(
                    "10 Oct, 08:00 AM",
                    style: CustomTextStyles.titleLargeOnPrimary,
                  ),
                  SizedBox(height: 49.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Overview",
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 70.h,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.green50001,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "Present",
                            style: CustomTextStyles.bodyMediumGreen50001,
                          ),
                        ),
                        Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(
                            left: 19.h,
                            top: 5.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.orange300,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "Absent",
                            style: CustomTextStyles.bodyMediumOrange300,
                          ),
                        ),
                        Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(
                            left: 19.h,
                            top: 5.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.red500,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "Late",
                            style: CustomTextStyles.bodyMediumRed500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Opacity(
                              opacity: 0.8,
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 9.v,
                                  right: 17.h,
                                ),
                                decoration: AppDecoration.fillOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    Container(
                                      height: 51.v,
                                      width: 9.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.green50001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Opacity(
                              opacity: 0.8,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 17.h,
                                  top: 13.v,
                                  right: 17.h,
                                ),
                                decoration: AppDecoration.fillOrangeA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 13.v),
                                    Container(
                                      height: 37.v,
                                      width: 9.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.green300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Opacity(
                              opacity: 0.8,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 17.h,
                                  top: 4.v,
                                  right: 17.h,
                                ),
                                decoration: AppDecoration.fillOrangeA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 9.v),
                                    Container(
                                      height: 51.v,
                                      width: 9.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.green300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Opacity(
                              opacity: 0.8,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 17.h,
                                  top: 13.v,
                                  right: 17.h,
                                ),
                                decoration: AppDecoration.fillRed.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 9.v),
                                    Container(
                                      height: 41.v,
                                      width: 9.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.green300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Opacity(
                              opacity: 0.8,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 17.h),
                                decoration: AppDecoration.fillRed.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 13.v),
                                    Container(
                                      height: 51.v,
                                      width: 9.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.green300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Opacity(
                              opacity: 0.8,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 17.h,
                                  top: 13.v,
                                  right: 17.h,
                                ),
                                decoration: AppDecoration.fillOrangeA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 9.v),
                                    Container(
                                      height: 41.v,
                                      width: 9.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.green300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 17.h,
                                top: 9.v,
                              ),
                              decoration: AppDecoration.fillRed500.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder2,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 18.v),
                                  Container(
                                    height: 37.v,
                                    width: 9.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.green50001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: Text(
                            "Apr".toUpperCase(),
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Text(
                            "May".toUpperCase(),
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Text(
                            "Jun".toUpperCase(),
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Text(
                            "JUL".toUpperCase(),
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Text(
                            "AUG".toUpperCase(),
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Text(
                            "SEP".toUpperCase(),
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Text(
                          "OCT",
                          style: CustomTextStyles.labelLargePoppinsGray900,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    height: 142.v,
                    width: 158.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "Present",
                              style: CustomTextStyles.bodySmallBluegray900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 42.v),
                            child: Text(
                              "75%",
                              style: CustomTextStyles.titleMediumGreen500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            margin: EdgeInsets.only(top: 16.v),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                40.h,
                              ),
                              border: Border.all(
                                color: appTheme.green50001,
                                width: 5.h,
                                strokeAlign: strokeAlignCenter,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 112.adaptSize,
                            width: 112.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                56.h,
                              ),
                              border: Border.all(
                                color: appTheme.green50001.withOpacity(0.2),
                                width: 5.h,
                                strokeAlign: strokeAlignCenter,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    height: 142.v,
                    width: 158.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 23.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "Absent",
                              style: CustomTextStyles.bodySmallBluegray900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 111.adaptSize,
                            width: 111.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                55.h,
                              ),
                              border: Border.all(
                                color: appTheme.orange300.withOpacity(0.2),
                                width: 5.h,
                                strokeAlign: strokeAlignCenter,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 15.v),
                            child: SizedBox(
                              height: 81.adaptSize,
                              width: 81.adaptSize,
                              child: CircularProgressIndicator(
                                value: 0.5,
                                strokeWidth: 5.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(top: 3.v),
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    height: 142.v,
                    width: 158.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 4.v),
                            child: Text(
                              "On TIme",
                              style: CustomTextStyles.bodySmallBluegray900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 45.v),
                            child: Text(
                              "90%",
                              style:
                                  CustomTextStyles.titleMediumPrimaryContainer,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            margin: EdgeInsets.only(top: 16.v),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                40.h,
                              ),
                              border: Border.all(
                                color: theme.colorScheme.primaryContainer
                                    .withOpacity(1),
                                width: 5.h,
                                strokeAlign: strokeAlignCenter,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 112.adaptSize,
                            width: 112.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                56.h,
                              ),
                              border: Border.all(
                                color: theme.colorScheme.primaryContainer
                                    .withOpacity(0.2),
                                width: 5.h,
                                strokeAlign: strokeAlignCenter,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(bottom: 3.v),
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    height: 142.v,
                    width: 158.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Late",
                            style: CustomTextStyles.bodySmallBluegray900,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 107.adaptSize,
                            width: 107.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                53.h,
                              ),
                              border: Border.all(
                                color: appTheme.red500.withOpacity(0.2),
                                width: 5.h,
                                strokeAlign: strokeAlignCenter,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 14.v),
                            child: SizedBox(
                              height: 81.adaptSize,
                              width: 81.adaptSize,
                              child: CircularProgressIndicator(
                                value: 0.5,
                                strokeWidth: 5.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMarkAttendanceButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Mark Attendance".toUpperCase(),
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 44.v,
      ),
    );
  }
}
