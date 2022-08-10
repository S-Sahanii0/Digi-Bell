import 'package:digibell/app/colors.dart';
import 'package:digibell/app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DigiBellHeader extends StatelessWidget {
  const DigiBellHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32.h),
      child: Row(
        children: [
          Icon(
            Icons.notifications_active,
            size: 48.h,
            color: DigiBellColors.darkRed,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'digiBell',
            style:
                DigiBellStyle.boldText20.copyWith(color: DigiBellColors.black),
          )
        ],
      ),
    );
  }
}
