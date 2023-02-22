import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whmp_project/main.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/images/cat-at-vacation.jpg')
                ),
              ),
            ),
            Text("UX is a myth. Design is a joke.", style: TextStyle(color: Colors.black, fontSize: 20),)
          ]
      ),

    );
  }
}
