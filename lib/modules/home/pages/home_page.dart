import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/core/routes/app_router.dart';
import 'package:control_user_design_df/modules/home/pages/home_details_page.dart';
import 'package:control_user_design_df/modules/rick_morty/data/repositories/character_repository.dart';
import 'package:control_user_design_df/modules/rick_morty/data/services/character_api_service.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          locator<StartAppCubit>().signOut();
        },
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Text("HOME SCREEN"),
          ),
          SizedBox(
            height: 100,
          ),
          TextButton(
            onPressed: () {
              context.goNamed(
                AppRoutes.homeDetails.name,
                extra: HomeDetailsPageObject(nameObject: 'nameObject'),
              );
            },
            child: Text('Navigate to Details'),
          )
        ],
      ),
    );
  }
}
