import 'package:alphax/core/constants/size.dart';
import 'package:flutter/material.dart';

class TextBoxInput extends StatefulWidget {
  const TextBoxInput(
      {super.key,
      this.controller,
      this.hintText,
      this.isPassword = false,
      this.onChanged});
  final TextEditingController? controller;
  final String? hintText;
  final bool isPassword;
  final void Function(String)? onChanged;
  @override
  State<TextBoxInput> createState() => _TextBoxInputState();
}

class _TextBoxInputState extends State<TextBoxInput> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: widget.controller,
          obscureText: widget.isPassword && !isShow,
          enableSuggestions: !widget.isPassword,
          autocorrect: !widget.isPassword,
          textAlignVertical: TextAlignVertical.center,
          style: t_t15_400.copyWith(
            color: Theme.of(context).textTheme.displayMedium?.color,
          ),
          onChanged: widget.onChanged,
          cursorColor: Theme.of(context).textTheme.displayMedium?.color,
          cursorHeight: 16,
          decoration: InputDecoration(
              hintText: widget.hintText,
              isCollapsed: true,
              contentPadding:
                  EdgeInsets.only(top: 13, bottom: 11, right: 12, left: 12),
              suffix: widget.isPassword
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          isShow = !isShow;
                        });
                      },
                      child: Text(
                        isShow ? 'Ẩn' : 'Hiện',
                        style: TextStyle(
                            color: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.color,
                            decoration: TextDecoration.underline,
                            decorationColor: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.color),
                      ))
                  : null,
              floatingLabelBehavior: FloatingLabelBehavior.always),
        )
      ],
    );
  }
}
