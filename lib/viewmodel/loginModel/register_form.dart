import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:typer/viewmodel/loginModel/rounded_button.dart';
import 'package:typer/viewmodel/loginModel/rounded_input.dart';
import 'package:typer/viewmodel/loginModel/rounded_password_input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(height: 10),

                  Text(
                    'Kayıt ol ',
                    style: TextStyle(
                       fontWeight: FontWeight.w400,
                      fontSize: 24
                    ),
                  ),

                  SizedBox(height: 40),

                  Image.asset(
                    'assets/images/logo2.png',
                    height: 200,
                    width: 200,
                  ),

                  SizedBox(height: 40),

                  RoundedInput(icon: Icons.mail, hint: 'Kullanıcı Adı'),

                  RoundedInput(icon: Icons.face_rounded, hint: 'İsim'),

                  RoundedPasswordInput(hint: 'Şifre'),

                  SizedBox(height: 10),

                  RoundedButton(title: 'Kayıt Ol'),

                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}