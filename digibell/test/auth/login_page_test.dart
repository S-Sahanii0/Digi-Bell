import 'package:digibell/app/buttons.dart';
import 'package:digibell/features/auth/presentation/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late GlobalKey<FormBuilderState> formKey;

  setUp(() {
    formKey = GlobalKey<FormBuilderState>();
  });
  group('Login View', () {
    testWidgets('Displays error when form is empty', (tester) async {
      await tester.pumpWidget(ScreenUtilInit(builder: (context, child) {
        return MaterialApp(home: LoginPage());
      }));
      await tester.tap(find.byType(DigiBellPrimaryButton));
      await tester.pumpAndSettle();
      const errorText = "Please enter a value";
      expect(find.text(errorText), findsOneWidget);
    });
  });
}
