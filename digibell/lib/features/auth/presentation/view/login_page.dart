import 'package:digibell/app/buttons.dart';
import 'package:digibell/app/colors.dart';
import 'package:digibell/features/auth/presentation/widgets/digibell_text_field.dart';
import 'package:digibell/features/home/presentation/view/home_page.dart';
import 'package:digibell/features/home/presentation/widgets/digibell_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DigiBellColors.whiteBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              const DigiBellHeader(),
              DigiBellTextField(
                  name: 'restaurant',
                  label: 'Restaurant Name',
                  fieldHint: 'Enter restaurant name.',
                  suffix: Icons.local_restaurant,
                  validator: (val) => val == null || val.isEmpty
                      ? 'Please enter restaurant name'
                      : null),
              SizedBox(
                height: 10.h,
              ),
              DigiBellTextField(
                  name: 'password',
                  label: 'Restaurant Password',
                  fieldHint: 'Enter the password.',
                  suffix: Icons.password,
                  validator: (val) => val == null || val.isEmpty
                      ? 'Please enter a value'
                      : null),
              SizedBox(
                height: 10.h,
              ),
              DigiBellPrimaryButton(
                  text: 'Proceed',
                  onTap: () {
                    if (_formKey.currentState!.saveAndValidate()) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      }));
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
