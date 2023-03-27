

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {

  final title;
  // final String title; final 뒤 생략 가능
  // Logo({required this.title, Key? key}) : super(key: key);
  Logo( this.title,{Key? key}) : super(key: key); //시그니처는 하나만 받을 때 앞에 넣어서 사용

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/logo.svg", height: 70, width: 70,),
        Text(
          title,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
