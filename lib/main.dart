import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/core/routes/app_router.dart';
import 'package:control_user_design_df/core/store/sotore_redux.dart';
import 'package:control_user_design_df/firebase_options.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setUpLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: locator<Store<StartAppState>>(),
      child: MaterialApp.router(
        routerConfig: goRouterConfiguration,
      ),
    );
  }
}
