import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangman_game/Screens/game_screen.dart';
import 'package:hangman_game/Screens/help_screen.dart';

import '../Routes/bouncy_PageRoute.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //PlayButton
    final PlayButton = GestureDetector(
      child: Material(elevation: 20, child: Image.asset("assets/play.png")),
      onTap: () {
        Navigator.of(context).push(
          BouncypageRoute(widget: const GameScreen()),
        );
      },
    );

    //HelpButton
    final HelpButton = GestureDetector(
      child: Material(elevation: 20, child: Image.asset("assets/help.png")),
      onTap: () {
        Navigator.of(context).push(
          BouncypageRoute(widget: const HelpScreen()),
        );
      },
    );

    //QuitButton
    final QuitButton = GestureDetector(
      child: Material(
        elevation: 20,
        child: Image.asset("assets/quit.png"),
      ),
      onTap: () {
        SystemNavigator.pop();
      },
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Menu",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Color(0xFF4D489B)),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icon.png",
                      fit: BoxFit.contain,
                      height: 200,
                    ),
                    const SizedBox(height: 15),
                    PlayButton,
                    const SizedBox(height: 15),
                    HelpButton,
                    const SizedBox(height: 15),
                    QuitButton
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
