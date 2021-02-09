import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_design/screens/onboard.dart';
import 'package:login_design/utils/palette.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Material(
      child: Stack(
        children: [
          Container(
            color: Palette.green,
          ),
          Container(
            width: double.infinity,
            height: _size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: VStack(
              [
                Center(
                  child: Image.asset(
                    'assets/scene1.png',
                    height: 230,
                  ),
                ), //.pOnly(bottom: 32, top: 60),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: Vx.m2,
                    border: OutlineInputBorder(),
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.email),
                  ),
                ).p16(),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: Vx.m2,
                    border: OutlineInputBorder(),
                    labelText: "Enter password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ).p16(),
                'Forgot password?'
                    .text
                    .sm
                    .textStyle(context.captionStyle)
                    .make()
                    .objectCenterRight()
                    .p16(),
                FlatButton(
                  onPressed: () {},
                  child: 'Log in'.text.bold.make(),
                  color: Palette.yellow,
                  textColor: Colors.white,
                ).wh(_size.width, 50).wFull(context).p16(),
              ],
            ),
          ),
          Positioned(
            child: VStack(
              [
                HStack(
                  [
                    SvgPicture.asset('assets/fb.svg'),
                    5.widthBox,
                    SvgPicture.asset('assets/google.svg'),
                    5.widthBox,
                    SvgPicture.asset('assets/twitter.svg'),
                  ],
                  alignment: MainAxisAlignment.center,
                ).wFull(context),
                16.heightBox,
                RichText(
                  text:
                      TextSpan(text: "Don't have an account yet? ", children: [
                    TextSpan(
                      text: 'Sign up here!',
                      style: TextStyle(
                        color: Palette.yellow,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OnboardScreen(),
                              ),
                            ),
                    ),
                  ]),
                ),
                /*"Don't have an account yet? "
                    .richText
                    .white
                    .withTextSpanChildren([
                  'Sign up here!'.textSpan.color(Palette.yellow).make()
                ]).makeCentered().*/
              ],
              crossAlignment: CrossAxisAlignment.center,
            ),
            bottom: 24,
          ),
        ],
      ),
    );
  }
}
