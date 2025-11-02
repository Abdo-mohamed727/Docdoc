import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/doc_app.dart';
import 'package:docdoc/core/routing/router.dart';

import 'package:flutter/material.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
  print("Debugger is connected ✅");
}
