import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_cubit.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartAppCubit, StartAppState>(
        bloc: locator<StartAppCubit>()..valiteUser(),
        builder: (context, state) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
