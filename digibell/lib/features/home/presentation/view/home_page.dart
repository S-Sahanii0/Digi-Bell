import 'package:digibell/app/colors.dart';
import 'package:digibell/features/home/presentation/widgets/digibell_header.dart';
import 'package:digibell/features/home/presentation/widgets/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: DigiBellColors.whiteBackground,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DigiBellHeader(),
              const NotificationCard(),
              Divider(
                height: 1.h,
                color: DigiBellColors.black25,
              ),
              const NotificationCard()
            ],
          ),
        ),
      ),
    );
  }
}
