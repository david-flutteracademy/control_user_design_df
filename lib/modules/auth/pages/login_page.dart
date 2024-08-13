import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_cubit.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            locator<StartAppCubit>().valiteUserTrue();
          },
          child: Text("LOGIN"),
        ),
      ),
    );
  }
}
