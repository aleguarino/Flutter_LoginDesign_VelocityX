import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_design/utils/palette.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardScreen extends StatelessWidget {
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
                    'assets/scene2.png',
                  ),
                ).pOnly(bottom: 32, top: 60),
                'Join to other runners'
                    .text
                    .center
                    .extraBlack
                    .xl3
                    .makeCentered(),
                16.heightBox,
                'Book an appointment in less than 60 seconds and get on the schedule as early as tomorrow.'
                    .text
                    .gray500
                    .medium
                    .center
                    .makeCentered()
                    .p16(),
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: _size.height * 0.15,
              child: VStack(
                [
                  HStack(
                    [
                      VxBox().square(5).gray500.roundedFull.make(),
                      10.widthBox,
                      VxBox().square(8).white.roundedFull.make(),
                      10.widthBox,
                      VxBox().square(5).gray500.roundedFull.make(),
                    ],
                    alignment: MainAxisAlignment.center,
                  ).wFull(context),
                  16.heightBox,
                  Spacer(),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: 'Skip'.text.white.make(),
                      ).px2(),
                      [
                        FlatButton(
                          onPressed: () {},
                          child: 'Next'.text.white.make(),
                        ).px4(),
                        SvgPicture.asset('assets/next.svg'),
                      ].hStack(),
                    ],
                  ),
                ],
                alignment: MainAxisAlignment.start,
              ).wFull(context),
            ),
            bottom: 24,
          ),
        ],
      ),
    );
  }
}
