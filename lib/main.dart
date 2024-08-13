import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/core/routes/app_router.dart';
import 'package:flutter/material.dart';

void main() async {
  setUpLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouterConfiguration,
    );
  }
}
