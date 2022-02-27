import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SelectPlayer extends StatefulWidget {
  const SelectPlayer({Key? key}) : super(key: key);

  @override
  State<SelectPlayer> createState() => _SelectPlayerState();
}

class _SelectPlayerState extends State<SelectPlayer> {
  @override
  bool gender = true;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 45 / 926,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    "Select your favourite player!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(children: [
                  Container(
                    height: size.height * 28 / 926,
                    width: size.width * 74 / 428,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    height: size.height * 28 / 926,
                    width: size.width * 74 / 428,
                  )
                ])
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "You can select multiple players!",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 43,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 43 / 2),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search 1000+ players",
                    hintStyle: TextStyle(color: Color(0xFF6B7076)))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Text(
                "Men",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 15),
              FlutterSwitch(
                  height: 32,
                  width: 64,
                  toggleColor: Colors.grey,
                  inactiveColor: Colors.white,
                  activeColor: Colors.white,
                  value: gender,
                  onToggle: (value) {
                    setState(() {
                      gender = !gender;
                    });
                  }),
              SizedBox(width: 15),
              Text(
                "Female",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  TeamsLogo(),
                  TeamsLogo(),
                  TeamsLogo(),
                  TeamsLogo(),
                  TeamsLogo(),
                  TeamsLogo(),
                  TeamsLogo(),
                  TeamsLogo(),
                  TeamsLogo(),
                  TeamsLogo(),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  Column TeamsLogo() {
    return Column(
      children: [
        GestureDetector(
          onTap: (() {}),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(50)),
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Barcelona",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
