import 'package:flutter/material.dart';
//widgets
import 'package:flutter_app_test/src/widget/back_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              'Create an account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            ),
            _usernameInput(),
            _emailInput(),
            _phoneInput(),
            _birthdayInput(),
            _passwordInput(),
            _sendButton(context)

          ],
        ),
      ),
    );
  }
}

Widget _usernameInput() {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
    padding: const EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 0.5),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Enter your username',
        prefixIcon: const Icon(Icons.person_outline),
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _phoneInput() {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
    padding: const EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 0.5),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Enter your phone number',
        prefixIcon: const Icon(Icons.phone_outlined),
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _birthdayInput() {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
    padding: const EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 0.5),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        hintText: 'Enter your birthday',
        prefixIcon: const Icon(Icons.cake_outlined),
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
    padding: const EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 0.5),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        prefixIcon: const Icon(Icons.lock_outline),
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
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
        ;
      },
      child: const Text('Sign up'),
    ),
  );
}