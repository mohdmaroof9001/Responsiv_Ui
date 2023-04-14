import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            'images/netflix.png',
            //  fit: BoxFit.cover,
            width: 100,
            height: 500,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Help"),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                // fixedSize: Size(50, 60),
                maximumSize: Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height,
                ),
                shape: CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Privacy"),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                //  fixedSize: Size(80, 60),
                maximumSize: Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height,
                ),
                shape: CircleBorder(),
              ),
            )
          ],
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortraitModeScreen()
              : LandscapeModeScreen();
        }),
        bottomNavigationBar: ElevatedButton(
          onPressed: () {
            print("Hello");
          },
          child: Text(
            "SIGN IN",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            fixedSize: Size(
              MediaQuery.of(context).size.width,
              50,
            ),
          ),
        ),
      ),
    );
  }

  PortraitModeScreen() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/device.png'),
          Text(
            "Watch on any device",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Stream on your phone, tablet,\nlaptop, TV.",
            textAlign: TextAlign.center,
            // Text Stachibal Growth
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.grey[100],
                  fontSize: 18,
                ),
            // TextStyle(
            //   color: Colors.white,
            //   fontSize: 18.0,
            // ),
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.red[900],
          //     onPrimary: Colors.white,
          //     padding: const EdgeInsets.symmetric(
          //         horizontal: 30,
          //         vertical: 20), // Button Size Increse & Decrese
          //   ),
          //   onPressed: () {},
          //   //  _downloadCV,
          //   child: Text('Download CV'),
          // ),
        ],
      ),
    );
  }

  LandscapeModeScreen() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              'images/device.png',
              // height: 5
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Watch on any device",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Stream on your phone, tablet,\nlaptop, TV.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
