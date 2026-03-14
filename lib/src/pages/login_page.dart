import 'package:flutter/material.dart';

//Colors
import 'package:flutter_app_test/src/colors/colors.dart';

//services
import 'package:flutter/services.dart';

//widgets
import 'package:flutter_app_test/src/widget/back_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( 
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                width: double.infinity,
                height: 138, //lo varío para probar 500 400
                fit: BoxFit.cover,
                'lib/src/assets/images/login_background.jpg'),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 10),
                child: backButton(context, Colors.white))

            ],
          ),
          Transform.translate(
            offset: const Offset(0, -20),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text( 
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87
                        ),
                      ),
                      Text( 
                        'Login to your account',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: gris,
                        ),
                      ),
                      _emailInput(),
                      _password(),
                      _loginButton(context),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'forgot-password');
                          },
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " Don't have an account? ",
                              style: TextStyle(
                                color: gris,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            )
                            
                          ],
                        ),
                      )



                    ],
                  ),
                ),
                ),
            ),
          )
        ],
      )
    );
  }
}

Widget _emailInput() {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 0.5),
      borderRadius: BorderRadius.circular(30.0)
    ),
    margin: const EdgeInsets.only(top: 40),
    padding: const EdgeInsets.only(left: 20),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: const Icon(Icons.email_outlined),
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _password() {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 0.5),
      borderRadius: BorderRadius.circular(30.0)
    ),
    margin: const EdgeInsets.only(top: 15),
    padding: const EdgeInsets.only(left: 20),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        prefixIcon: const Icon(Icons.lock_outline),
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _loginButton(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 50,
    margin: const EdgeInsets.only(top: 30),
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: Center(
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}