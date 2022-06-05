import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:typer/viewmodel/loginModel/rounded_button.dart';
import 'package:typer/viewmodel/loginModel/rounded_input.dart';
import 'package:typer/viewmodel/loginModel/rounded_password_input.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
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
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 50),
                Text(
                  'Hoşgeldiniz',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24
                  ),
                ),

                SizedBox(height: 40),

                Image.asset('assets/images/logo.png',height: 220,width: 220,),

                SizedBox(height: 10),

                RoundedInput(icon: Icons.mail, hint: 'Kullanıcı Adı'),

                RoundedPasswordInput(hint: 'Şifre'),

                SizedBox(height: 10),

                RoundedButton(title: 'Giriş'),

                SizedBox(height: 10),

              ],
            ),
          ),
        ),
      ),
    );
  }
}