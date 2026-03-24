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
              'Forgot password?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Please enter your email address to receive a link to create a new password via email.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
            ),
            _emailInput(),
            _sendButton(context)

          ],
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
    padding: const EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 0.5),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        prefixIcon: const Icon(Icons.email_outlined),
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _sendButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,          // color de fondo del botón
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: () {
        _showAlertDialog(context);
      },
      child: const Text('Send'),
    ),
  );
}

void _showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'lib/src/assets/lock.png',
            height: 60,
            width: 60,
          ),
          const SizedBox(height: 20),
          const Text(
            'Email sent successfully!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Please check your inbox for the password reset link.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            child: const Text('OK'),
          )
          
        ],
      ),
    ),
  );
}
