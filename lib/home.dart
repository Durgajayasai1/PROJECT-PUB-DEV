import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart' as badges;
import 'package:pin_code_fields/pin_code_fields.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -16, end: -12),
              badgeContent: const Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              badgeStyle: badges.BadgeStyle(
                borderRadius: BorderRadius.circular(8),
              ),
              badgeAnimation: const badges.BadgeAnimation.fade(
                  animationDuration: Duration(seconds: 3)),
              child: const Icon(
                FontAwesomeIcons.cartShopping,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          )
        ],
        title: const Text(
          'INSANE',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PinCodeTextField(
              appContext: context,
              length: 6,
              keyboardType: TextInputType.number,
              obscureText: true,
              obscuringCharacter: '*',
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40),
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}



// Understanding Pub.dev and making connection how it is helping Flutter Community
// LEARNED ABOUT SOME PACKAGES IN THIS PROJECT
// Fonts Awesome Icons package
// Read More package
// Badges package
// Animated Text Kit package
// Pin Code Field Widget