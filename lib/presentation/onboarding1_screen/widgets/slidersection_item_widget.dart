import 'package:flutter/material.dart';
import 'package:shiftclock/core/app_export.dart';

// ignore: must_be_immutable
class SlidersectionItemWidget extends StatelessWidget {
  const SlidersectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 6.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup88,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 21.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrameBlueGray700,
            height: 300.v,
            width: 304.h,
          ),
        ],
      ),
    );
  }
}
