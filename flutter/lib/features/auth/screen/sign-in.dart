import 'package:alphax/app-router.gr.dart';
import 'package:alphax/core/constants/size.dart';
import 'package:alphax/features/auth/widgets/sign-in-form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.displayMedium;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
          const SignInForm(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Bạn chưa có tài khoản ư?',
                style: t_t14_400.copyWith(color: textTheme?.color),
              ),
              const SizedBox(
                width: 6,
              ),
              InkWell(
                onTap: () =>
                    {AutoRouter.of(context).replace(const SignupRoute())},
                child: Text(
                  'Đăng ký',
                  style: t_t14_400.copyWith(
                      color: textTheme?.color,
                      decoration: TextDecoration.underline,
                      decorationColor: textTheme?.color),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
