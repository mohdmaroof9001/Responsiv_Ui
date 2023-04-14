// ignore_for_file: prefer_const_constructors

// import 'dart:html';

// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsiv_ui/responsiv_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobileScreen: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/backgrounds%2Fluke-chesser-PHtp0cDBJSM-unsplash.jpg?alt=media&token=e87b533f-9e8d-49ab-991b-d3c53221ceb4"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            shape: BoxShape.circle),
                        child: Image.asset(
                          "images/device.png",
                          fit: BoxFit.scaleDown,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Log in",
                      style: TextStyle(fontSize: 35),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Username",
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Log in"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          // padding: EdgeInsets.symmetric(
                          //     horizontal: 220, vertical: 25)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("OR"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          print("hello");
                        },
                        child: Text("Sigin with Facebook"),
                        style: ElevatedButton.styleFrom(
                            // padding: EdgeInsets.symmetric(
                            //     horizontal: 175, vertical: 25)
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Text(
                    //   "The wave roared towards them with speed and violence they had not anticipated. They both turned to run but by that time it was too late. The wave crashed into their legs sweeping both of them off of their feet. They now found themselves in a washing machine of saltwater, getting tumbled and not know what was up or down. Both were scared, not knowing how this was going to end, but it was by far the best time of the trip thus far.",
                    //   textAlign: TextAlign.center,
                    //   style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    //         color: Colors.white,
                    //         fontSize: 15,
                    //       ),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
