import 'package:alphax/app-router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  init(context) async {
    await Future.delayed(Duration(seconds: 4));
    AutoRouter.of(context).navigate(
      SignInRoute(),
    );
  }

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: SvgPicture.asset(
          'assets/svg/alpha.svg',
          width: 150,
        ),
      ),
    );
  }
}
