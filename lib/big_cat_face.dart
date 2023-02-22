import 'package:flutter/material.dart';

class big_cat_face extends StatelessWidget {
  const big_cat_face({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 500,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: AssetImage('assets/images/cat_face.jpg')),
        ),
      ),
    );
  }
}
