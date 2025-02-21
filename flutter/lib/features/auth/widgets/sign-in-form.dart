import 'package:alphax/core/constants/size.dart';
import 'package:alphax/features/auth/bloc/auth-cubit.dart';
import 'package:alphax/features/auth/bloc/auth-state.dart';
import 'package:alphax/widget/button/outline-button.dart';
import 'package:alphax/widget/input/textbox-input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svg/alpha.svg',
          width: 60,
        ),
        Text(
          'Đăng nhập vào Alpha X',
          style: t_t17_700.copyWith(
              color: Theme.of(context).textTheme.displayMedium?.color),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              TextBoxInput(
                hintText: "Email của bạn",
                onChanged: (val) {
                  context.read<AuthCubit>().changeLoginForm(email: val);
                },
              ),
              const SizedBox(
                height: 26,
              ),
              TextBoxInput(
                hintText: "Mật khẩu của bạn",
                isPassword: true,
                onChanged: (val) {
                  context.read<AuthCubit>().changeLoginForm(password: val);
                },
              ),
              const SizedBox(
                height: 26,
              ),
              BlocBuilder<AuthCubit, AuthState>(
                  buildWhen: (previous, current) =>
                      previous.signInForm.isValid != current.signInForm.isValid,
                  builder: (context, state) {
                    return CustomOutlineButton(
                      content: "Đăng nhập",
                      onPress: () {},
                      disable: !state.signInForm.isValid,
                    );
                  })
            ],
          ),
        ),
      ],
    ));
  }
}
