import 'package:flutter/material.dart';
import 'package:olearis_test/config/constant/constant.dart';

class AuthForm extends StatelessWidget {
  final Function(String) onChangeLogin;
  final Function(String) onChangePassword;

  const AuthForm(
      {required this.onChangeLogin, required this.onChangePassword, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: allPadding,
          child: TextField(
            onChanged: (value) {
              onChangeLogin(value);
            },
          ),
        ),
        Padding(
          padding: allPadding,
          child: TextField(
            onChanged: (value) {
              onChangePassword(value);
            },
          ),
        ),
      ],
    );
  }
}
