import 'package:flutter/material.dart';
import 'package:footballquotes/components/buttons.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<LoginScreen> {
  // MediaQuery.of(context).size.height * 158 / 926;

  @override
  bool _isObscure = true;
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/sign-up.png"),
                    fit: BoxFit.cover)),
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 350 / 926,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: Column(
                    children: [
                      Container(
                        child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                fillColor: Colors.grey,
                                filled: true,
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.email_sharp,
                                      color: Colors.white),
                                  onPressed: null,
                                ),
                                hintText: "Enter username or email",
                                hintStyle: TextStyle(color: Colors.white))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                fillColor: Colors.grey,
                                filled: true,
                                hintText: "Enter Password",
                                hintStyle: TextStyle(color: Colors.white),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                ))),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Forgot Password?"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MainButton(
                  btnColor: Colors.white,
                  btnTextColor: Colors.black,
                  buttonText: "Login",
                  btnwidth: 332,
                ),
                SizedBox(height: 15),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.white,
                    ),
                  ),
                  Text("OR"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.white,
                    ),
                  ),
                ]),
                SizedBox(height: 15),
                MainButton(
                  btnColor: Colors.black,
                  btnTextColor: Colors.white,
                  buttonText: "Continue with Google",
                  btnwidth: 332,
                  borderColor: Colors.white,
                ),
                SizedBox(height: 10),
                MainButton(
                  btnColor: Colors.black,
                  btnTextColor: Colors.white,
                  buttonText: "Continue with Facebook",
                  btnwidth: 332,
                  borderColor: Colors.white,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 45 / 926),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    Text(
                      " SIGNUP",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
    ;
  }
}
