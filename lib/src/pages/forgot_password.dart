import 'package:flutter/material.dart';
import 'package:flutter_app_test/src/widget/back_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          }
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Forgot password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            )
          ],
        ),
      ),
    );
  }
}