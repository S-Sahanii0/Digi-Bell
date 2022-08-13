import 'package:digibell/app/colors.dart';
import 'package:digibell/app/form_theme.dart';
import 'package:digibell/app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DigiBellTextField extends StatelessWidget {
  final String name;
  final String label;
  final String fieldHint;
  final IconData suffix;
  final FormFieldValidator validator;

  const DigiBellTextField(
      {Key? key,
      required this.name,
      required this.label,
      required this.fieldHint,
      required this.suffix,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      decoration: getFormInputDecoration(
        hint: fieldHint,
        suffix: suffix,
      ),
    );
  }
}

InputDecoration getFormInputDecoration({
  String? hint,
  required IconData? suffix,
  VoidCallback? onTapSuffix,
  String? labelText,
}) =>
    InputDecoration(
      suffixIcon: suffix == null
          ? null
          : InkWell(
              onTap: onTapSuffix,
              child: Icon(
                suffix,
                size: 24,
                color: DigiBellColors.darkRed,
              ),
            ),
      labelText: labelText,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      hintText: hint,
      hintStyle: DigiBellStyle.regularText12
          .copyWith(color: DigiBellColors.darkRed.withOpacity(0.5)),
      focusedBorder: kStyleFocusBorder,
      errorBorder: kStyleErrorBorder,
      enabledBorder: kStyleEnabledBorder,
      border: const OutlineInputBorder(),
    );
