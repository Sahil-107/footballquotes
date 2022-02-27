import 'package:flutter/material.dart';
import 'package:footballquotes/components/buttons.dart';

const activeGenderColor = Colors.grey;
const inActiveGenderColor = Colors.transparent;

class SignInPage1 extends StatefulWidget {
  const SignInPage1({Key? key}) : super(key: key);

  @override
  _SignInPage1State createState() => _SignInPage1State();
}

class _SignInPage1State extends State<SignInPage1> {
  bool _isObscure = true;
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
                      "What's your Email?",
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
                    height: 25,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create a strong password",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: TextField(
                        obscureText: _isObscure,
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
                            hintText: "Enter password (use 8 characters)",
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What's your gender?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      GenderBox(
                        text: "Male",
                      ),
                      SizedBox(width: 10),
                      GenderBox(
                        text: "Female",
                      ),
                      SizedBox(width: 10),
                      GenderBox(
                        text: "Other",
                      )
                    ],
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 45 / 926),
                  MainButton(
                      btnColor: Colors.white,
                      btnTextColor: Colors.black,
                      buttonText: "Next",
                      btnwidth: 136)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GenderBox extends StatefulWidget {
  GenderBox({required this.text});
  String text;

  @override
  _GenderBoxState createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {
  // Color maleColor = inActiveGenderColor;
  // Color femaleColor = inActiveGenderColor;
  // Color otherGenderColor = inActiveGenderColor;
  Color genderColor = inActiveGenderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // if (widget.text == "Male") {
          //   maleColor = activeGenderColor;
          //   femaleColor = inActiveGenderColor;
          //   otherGenderColor = inActiveGenderColor;
          // }
          genderColor = activeGenderColor;
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 50 / 926,
        width: MediaQuery.of(context).size.width * 100 / 428,
        decoration: BoxDecoration(
          color: genderColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
