import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.h),
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications_active,
                      size: 48.h,
                      color: Colors.red[800],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'digiBell',
                      style: TextStyle(
                          fontSize: 32.sp, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Text(
                'Table 1 is calling for waiter',
                style: TextStyle(fontSize: 14.sp),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Note: ',
                    style: TextStyle(color: Colors.red[800], fontSize: 12.sp)),
                TextSpan(
                    text: 'Bring warm water',
                    style: TextStyle(color: Colors.black, fontSize: 12.sp))
              ])),
              SizedBox(
                height: 10.h,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.green),
                ),
                child: Padding(
                  padding: EdgeInsets.all(6.h),
                  child: const Text(
                    'Accept',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
