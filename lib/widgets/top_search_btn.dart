import 'package:flutter/material.dart';

class TopSearchBtn extends StatefulWidget {
  const TopSearchBtn({ Key? key }) : super(key: key);

  @override
  _TopSearchBtnState createState() => _TopSearchBtnState();
}

class _TopSearchBtnState extends State<TopSearchBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,

      child: IconButton(
        onPressed: () {
        },
        icon: Icon(Icons.search),
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(75, 255, 255, 255),
        borderRadius: BorderRadius.all(Radius.circular(200))
      ),
    );
  }
}