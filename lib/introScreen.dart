import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Discover Your City",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "Plan your trips, save favorite places, and make your Pakistani adventures unforgettable.",
            image: Image.asset("images/traveller-1,png", height: 400, width: 400,)
          ),
        ],
      ),
    );
  }
}
