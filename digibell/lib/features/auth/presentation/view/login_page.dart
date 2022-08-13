import 'package:digibell/app/buttons.dart';
import 'package:digibell/app/colors.dart';
import 'package:digibell/features/auth/presentation/widgets/digibell_text_field.dart';
import 'package:digibell/features/home/presentation/widgets/digibell_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DigiBellColors.whiteBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          children: [
            const DigiBellHeader(),
            DigiBellTextField(
                name: 'restaurant',
                label: 'Restaurant Name',
                fieldHint: 'Restaurant',
                suffix: Icons.local_restaurant,
                validator: (val) => val.isEmpty || val == null
                    ? 'Please enter restaurant name'
                    : null),
            SizedBox(
              height: 10.h,
            ),
            DigiBellTextField(
                name: 'password',
                label: 'Restaurant Password',
                fieldHint: 'Password',
                suffix: Icons.password,
                validator: (val) =>
                    val.isEmpty || val == null ? 'Please enter a value' : null),
            SizedBox(
              height: 10.h,
            ),
            DigiBellPrimaryButton(text: 'Proceed', onTap: () {})
          ],
        ),
      ),
    );
  }
}
