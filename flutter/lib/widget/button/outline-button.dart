import 'package:alphax/core/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomOutlineButton extends StatelessWidget {
  final String content;
  final void Function() onPress;
  final bool disable, isLoading;
  const CustomOutlineButton(
      {super.key,
      required this.content,
      required this.onPress,
      this.disable = false,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: const ButtonStyle(
            minimumSize: WidgetStatePropertyAll(Size.fromHeight(50)),
            padding: WidgetStatePropertyAll(EdgeInsets.zero)),
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading)
              const SpinKitCircle(
                color: Color(0xff9d9d9d),
                size: 25,
              ),
            const SizedBox(
              width: 10,
            ),
            Text(
              content,
              style: t_t14_700.copyWith(
                  color: disable | isLoading ? const Color(0xff9d9d9d) : null),
            ),
          ],
        ));
  }
}
