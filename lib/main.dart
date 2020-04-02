import 'package:auth_screen/constants.dart';
import 'package:auth_screen/sign_in_screen.dart';
import 'package:auth_screen/widgets/background_image.dart';
import 'package:auth_screen/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen #2',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          button: TextStyle(fontWeight: FontWeight.bold),
          headline: TextStyle(fontWeight: FontWeight.bold),
        ),
        inputDecorationTheme:
            InputDecorationTheme(enabledBorder: InputBorder.none),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: backgroundImageWithText(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "CONTINUE WITH",
                    style: Theme.of(context).textTheme.button,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MyIconButton(svg: "assets/icons/Iconfacebook.svg"),
                        MyIconButton(svg: "assets/icons/Icontwitter.svg"),
                        MyIconButton(svg: "assets/icons/Icondribbble.svg"),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: kBlackColor,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignInScreen();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "EMAIL",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: kWhiteColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
