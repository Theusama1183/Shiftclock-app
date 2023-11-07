import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';

// ignore: must_be_immutable
class SliderwidgetItemWidget extends StatelessWidget {
  const SliderwidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 45.h,
        vertical: 32.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup106,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 49.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 269.v,
            width: 285.h,
          ),
        ],
      ),
    );
  }
}
