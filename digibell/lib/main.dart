import 'dart:async';
import 'dart:developer';

import 'package:digibell/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) {
      log(error.toString());
      log(stackTrace.toString());
    },
  );

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
}
