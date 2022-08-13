import 'package:digibell/app/colors.dart';
import 'package:digibell/app/styles.dart';
import 'package:digibell/features/home/presentation/widgets/accept_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Flexible(
            flex: 6,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Table 1 is calling for waiter',
                  style: DigiBellStyle.regularText16
                      .copyWith(color: DigiBellColors.black),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Note: ',
                      style: DigiBellStyle.regularText14
                          .copyWith(color: DigiBellColors.darkRed)),
                  TextSpan(
                      text: 'Bring warm water',
                      style: DigiBellStyle.regularText14
                          .copyWith(color: DigiBellColors.black))
                ])),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
          const Spacer(),
          const AcceptButton(),
        ],
      ),
    );
  }
}
