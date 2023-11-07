import '../nine_screen/widgets/attendancemarkedlist1_item_widget.dart';
import '../nine_screen/widgets/attendancemarkedlist2_item_widget.dart';
import '../nine_screen/widgets/twentysix_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';
import 'package:shiftclock/widgets/app_bar/appbar_leading_image.dart';
import 'package:shiftclock/widgets/app_bar/appbar_title.dart';
import 'package:shiftclock/widgets/app_bar/custom_app_bar.dart';

class NineScreen extends StatelessWidget {
  const NineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildThirty(context),
                  Column(children: [
                    SizedBox(height: 20.v),
                    Text("New".toUpperCase(),
                        style: CustomTextStyles.labelLargePoppinsGray900_1),
                    SizedBox(height: 18.v),
                    _buildAttendanceMarkedList1(context),
                    SizedBox(height: 17.v),
                    Text("29 - March - 2023".toUpperCase(),
                        style: CustomTextStyles.labelLargePoppinsBlack900),
                    SizedBox(height: 20.v),
                    _buildAttendanceMarkedList2(context),
                    SizedBox(height: 15.v),
                    Text("25 - March - 2023".toUpperCase(),
                        style: CustomTextStyles.labelLargePoppinsBlack900),
                    SizedBox(height: 15.v),
                    _buildAttendanceMarkedStack(context)
                  ])
                ]))));
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
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
              title: AppbarTitle(text: "Notifications "))
        ]));
  }

  /// Section Widget
  Widget _buildAttendanceMarkedList1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Attendancemarkedlist1ItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildAttendanceMarkedList2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Attendancemarkedlist2ItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildAttendanceMarkedStack(BuildContext context) {
    return SizedBox(
        height: 189.v,
        width: 374.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 19.h, top: 10.v, right: 19.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 9.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Attendance Marked",
                            style: CustomTextStyles.titleSmallBlack900),
                        SizedBox(height: 4.v),
                        Container(
                            width: 285.h,
                            margin: EdgeInsets.only(right: 7.h),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incidid...",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodySmallMontserratBlack900
                                    .copyWith(height: 1.50))),
                        SizedBox(height: 10.v)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 10.v),
                  child: SizedBox(width: 126.h, child: Divider()))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 19.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
                  decoration: AppDecoration.fillGray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 36.v),
                        Text("Attendance Marked",
                            style: CustomTextStyles.titleSmallBlack900)
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 124.h, vertical: 10.v),
                  decoration: AppDecoration.gradientOnPrimaryToOnPrimary,
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 74.v);
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return TwentysixItemWidget();
                      })))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
