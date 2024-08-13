import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//Navigate with pararameters
class HomeDetailsPageObject {
  final String nameObject;

  HomeDetailsPageObject({required this.nameObject});
}

class HomeDetailsPage extends StatelessWidget {
  final HomeDetailsPageObject homeObject;
  const HomeDetailsPage({super.key, required this.homeObject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(homeObject.nameObject),
      ),
    );
  }
}
