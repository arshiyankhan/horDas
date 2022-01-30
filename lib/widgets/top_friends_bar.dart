import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/friend.dart';
import 'dart:math' as math;

class TopFriendsBar extends StatefulWidget {
  const TopFriendsBar({ Key? key }) : super(key: key);

  @override
  _TopFriendsBarState createState() => _TopFriendsBarState();
}

class _TopFriendsBarState extends State<TopFriendsBar> {
  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery. of(context). size. width ;


    return Container(
      // width: double.infinity,
      
      width: width-85,
      height: 50,
      color: Colors.transparent,
      
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Friend.currentFriends.length,
        itemBuilder: (context, index) {
          return TopFriendsBtn(
            friend: Friend.currentFriends[index],
          );
        }
      ),
    );
  }
}

class TopFriendsBtn extends StatefulWidget {
  Friend friend;

  TopFriendsBtn({ Key? key, required this.friend}) : super(key: key);

  @override
  _TopFriendsBtnState createState() => _TopFriendsBtnState();
}

class _TopFriendsBtnState extends State<TopFriendsBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:15.0),
      width: 50,
      
      child: Center(
        child: Text(
          widget.friend.profile_pic,
          style: TextStyle(
            fontFamily: "gilroylight",
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w900
          ),
        ),
      ),

      decoration: BoxDecoration(
        // color: Colors.grey,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.70),
        borderRadius: BorderRadius.all(Radius.circular(200))
      ),
    );
  }
}