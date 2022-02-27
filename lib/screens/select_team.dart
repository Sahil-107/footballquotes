import 'package:flutter/material.dart';

class SelectTeam extends StatelessWidget {
  const SelectTeam({Key? key}) : super(key: key);

  @override
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
                    "Select your favourite team!",
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
              "You can select multiple teams!",
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
                    hintText: "Search 100+ teams",
                    hintStyle: TextStyle(color: Color(0xFF6B7076)))),
          ),
          SizedBox(
            height: 25,
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
