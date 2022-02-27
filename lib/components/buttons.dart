import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton(
      {required this.btnColor,
      required this.btnTextColor,
      required this.buttonText,
      required this.btnwidth,
      this.borderColor = Colors.transparent});

  late String buttonText;
  late Color btnTextColor;
  late Color btnColor;
  var btnwidth;
  late Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        buttonText,
        style: TextStyle(fontSize: 16, color: btnTextColor),
      )),
      height: 48,
      width: MediaQuery.of(context).size.width * btnwidth / 428,
      margin: EdgeInsets.only(left: 24, right: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: btnColor,
          border: Border.all(
            color: borderColor,
          )),
    );
  }
}

class GoBackButton extends StatelessWidget {
  GoBackButton({required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height * 54 / 926,
      width: MediaQuery.of(context).size.width * 54 / 428,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFF4F4F4F)),
      child: IconButton(
        alignment: Alignment.center,
        icon: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
          size: 35,
        ),
        onPressed: onPressed(),
      ),
    );
  }
}
