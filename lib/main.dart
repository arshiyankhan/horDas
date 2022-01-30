import 'dart:io';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/top_friends_bar.dart';
import 'package:flutter_application_2/widgets/top_search_btn.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));

  if (Platform.isWindows){
    doWhenWindowReady(() {
      final initialSize = Size(400, 780);
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.center;
      appWindow.show();
    });
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5B61B9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            fit: StackFit.passthrough,
            children: [
              Image.asset(
                'assets/topbg.jpg',
                height: 200,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: 50,
                left: 35,
                child: Text(
                  "Chat with\nyour friends",
                  style: TextStyle(
                    fontFamily: "gilroy",
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 135,
                left: 35,
                child: TopSearchBtn(),
              ),
              Positioned(
                top: 135,
                left: 85,
                child: TopFriendsBar()
              )
            ],
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF292929),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(35)
                )
              ),
            ),
          )
        ],
      )
    );
  }
}