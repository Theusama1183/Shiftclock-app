import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SixteenDialog extends StatelessWidget {
  const SixteenDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 300.h,
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 30.v),
          Container(
            width: 243.h,
            margin: EdgeInsets.only(
              left: 28.h,
              right: 29.h,
            ),
            child: Text(
              "“ShiftClock” Would Like to Use\nYour Current Location",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumBlack900.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: 177.h,
            child: Text(
              "This allows access to location information.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallBlack900_1.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 35.v),
          SizedBox(
            height: 51.v,
            width: 300.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 36.h,
                      right: 56.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 13.v,
                            bottom: 16.v,
                          ),
                          child: Text(
                            "Don’t Allow",
                            style: CustomTextStyles.titleSmallPoppinsPrimary_1,
                          ),
                        ),
                        Spacer(
                          flex: 39,
                        ),
                        SizedBox(
                          height: 51.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.blueGray100,
                          ),
                        ),
                        Spacer(
                          flex: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 13.v,
                            bottom: 16.v,
                          ),
                          child: Text(
                            "Allow",
                            style: CustomTextStyles.titleSmallPoppinsPrimary_2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: SizedBox(
                      width: 300.h,
                      child: Divider(
                        color: appTheme.blueGray100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
