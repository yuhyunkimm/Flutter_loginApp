import 'package:flutter/material.dart';
import 'package:flutter_login/components/my_input_decoration.dart';

class CustomTextFormField extends StatelessWidget {

  final title;
  final bool isObscure; // 선택적 매개변수는 타입을 붙혀주자(시그니처말곤 타입을 붙혀주자)

  const CustomTextFormField(this.title, {this.isObscure = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        TextFormField( // 전송 버튼을 누를때 유효성 검사
          // ! = 절대 null이 아니다
          // 3. validator 만들어 준다
          validator: (value) => value!.isEmpty ? "Please enter some text" : null,
          // onChanged: (text){
          //   print(text);
          // },
          obscureText: isObscure,
          decoration: MyInputDecoration("Enter $title"),
        ),
      ],
    );
  }
}
