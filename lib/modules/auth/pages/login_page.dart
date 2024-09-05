import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/core/routes/app_router.dart';
import 'package:control_user_design_df/core/store/sotore_redux.dart';
import 'package:control_user_design_df/modules/home/pages/home_details_page.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_cubit.dart';
import 'package:control_user_design_df/modules/start/redux/start_app_actions.dart';
import 'package:control_user_design_df/utils/form_validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: FormValidators.isValidEmail,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                validator: FormValidators.isValidPassword,
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // locator<StartAppCubit>().signInWithEmail(
                    //   email: emailController.text,
                    //   password: passwordController.text,
                    // );

                    startUpStore.dispatch(SignInWithEmailAction(
                      email: emailController.text,
                      password: passwordController.text,
                    ));
                  }

                  // context.goNamed(
                  //   AppRoutes.homeDetails.name,
                  //   extra: HomeDetailsPageObject(nameObject: 'nameObject'),
                  // );
                },
                child: Text("LOGIN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
