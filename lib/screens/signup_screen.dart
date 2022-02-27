import 'package:flutter/material.dart';
import 'package:footballquotes/components/buttons.dart';

class SignUpScreen extends StatelessWidget {
  // MediaQuery.of(context).size.height * 158 / 926;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/sign-up.png"),
                    fit: BoxFit.cover)),
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 420 / 926,
                ),
                Image.asset(
                  "images/fq-logo.png",
                  height: 54,
                  width: 54,
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Text(
                    "Getting you closer to the most beautiful game ⚽",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MainButton(
                  btnColor: Colors.white,
                  btnTextColor: Colors.black,
                  buttonText: "Sign up for free",
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
                    Text("Already have and account?"),
                    Text(
                      " LOGIN",
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
