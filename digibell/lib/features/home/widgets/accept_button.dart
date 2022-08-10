import 'package:digibell/app/colors.dart';
import 'package:digibell/app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcceptButton extends StatelessWidget {
  const AcceptButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: DigiBellColors.darkGreen),
      ),
      child: Padding(
        padding: EdgeInsets.all(6.h),
        child: Text(
          'Accept',
          style: DigiBellStyle.regularText14
              .copyWith(color: DigiBellColors.darkGreen),
        ),
      ),
    );
  }
}
