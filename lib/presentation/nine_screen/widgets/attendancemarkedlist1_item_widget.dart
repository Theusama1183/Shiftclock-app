import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';

// ignore: must_be_immutable
class Attendancemarkedlist1ItemWidget extends StatelessWidget {
  const Attendancemarkedlist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: Text(
                    "Attendance Marked",
                    style: CustomTextStyles
                        .titleSmallPoppinsPrimaryContainerSemiBold,
                  ),
                ),
                Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              12.h,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.primaryContainer
                                  .withOpacity(1),
                              width: 2.h,
                              strokeAlign: strokeAlignCenter,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 5.v,
                        width: 8.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 284.h,
            margin: EdgeInsets.only(right: 10.h),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incidid...",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
