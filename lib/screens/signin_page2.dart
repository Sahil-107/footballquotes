import 'package:flutter/material.dart';
import 'package:footballquotes/components/buttons.dart';

class SignInPage2 extends StatefulWidget {
  const SignInPage2({Key? key}) : super(key: key);

  @override
  _SignInPage1State createState() => _SignInPage1State();
}

class _SignInPage1State extends State<SignInPage2> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 45 / 926),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: GoBackButton(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 67 / 428,
                ),
                Text(
                  "Create Account",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: LinearProgressIndicator(
                color: Colors.white,
                backgroundColor: Colors.grey,
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What should we call you?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: const TextField(
                        autofocus: true,
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
                            hintText: "Enter your email",
                            hintStyle: TextStyle(color: Colors.white))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "By tapping on “Create account”, you agree to the Football Quotes",
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Text(
                        "Terms of Use",
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  Row(
                    children: [
                      Text("Receive notifications from Football Quotes"),
                      Spacer(),
                      Checkbox(
                        checkColor: Colors.black,
                        shape: CircleBorder(),
                        activeColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 136 / 926),
                  MainButton(
                      btnColor: Colors.white,
                      btnTextColor: Colors.black,
                      buttonText: "Next",
                      btnwidth: 230)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
