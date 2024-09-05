import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_cubit.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:control_user_design_df/modules/start/redux/start_app_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final storeStartUp = locator<Store<StartAppState>>();

    storeStartUp.dispatch(AuthStateChangesFirebaseAction());

    return StoreConnector<StartAppState, bool>(
      //You can put the value that you need to replace bool
      converter: (store) => storeStartUp.state.isLogged ?? false,
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
