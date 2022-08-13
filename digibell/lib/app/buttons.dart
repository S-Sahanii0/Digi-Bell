import 'package:digibell/app/colors.dart';
import 'package:digibell/app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DigiBellPrimaryButton extends StatelessWidget {
  const DigiBellPrimaryButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isLoading = false,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: SizedBox(
          width: double.infinity,
          child: ColoredBox(
            color: DigiBellColors.darkRed,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: isLoading
                  ? Align(
                      child: SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: const CircularProgressIndicator(
                          color: DigiBellColors.white,
                        ),
                      ),
                    )
                  : Text(
                      text,
                      textAlign: TextAlign.center,
                      style: DigiBellStyle.regularText12
                          .copyWith(color: DigiBellColors.white),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
