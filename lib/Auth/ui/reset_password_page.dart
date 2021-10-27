import 'package:flutter/material.dart';
import 'package:fire-base-project/Auth/providers/auth_provider.dart';
import 'package:fire-base-project/Auth/ui/widgets/custom_textField.dart';
import 'package:fire-base-project/global_widgets/custom_button.dart';
import 'package:provider/provider.dart';

class ResetPasswordPage extends StatelessWidget {
  static final routeName = 'reset';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Consumer<AuthProvider>(
        builder: (context, provider, x) {
          return Column(
            children: [
              CustomTextfield('Email', provider.emailController),
              CustomButton(provider.resetPassword, 'Reset Password'),
            ],
          );
        },
      ),
    );
  }
}
