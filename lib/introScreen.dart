import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),

        pages: [
          // ================= PAGE 1 =================
          PageViewModel(
            titleWidget: SizedBox.shrink(),
            bodyWidget: Column(
              children: [
                SizedBox(height: 60),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "images/traveller-1.png",
                    height: 400,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  "Discover Pakistan",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    // letterSpacing: .3,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  "Explore top cities, attractions,\nrestaurants, hotels and more.",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blueGrey,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // ================= PAGE 2 =================
          PageViewModel(
            titleWidget: SizedBox.shrink(),
            bodyWidget: Column(
              children: [
                SizedBox(height: 60),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "images/traveller-2.png",
                    height: 400,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  "Find Hidden Gems",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    // letterSpacing: .3,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  "Discover secret spots and\nfamous landmarks in Pakistan.",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blueGrey,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // ================= PAGE 3 =================
          PageViewModel(
            titleWidget: SizedBox.shrink(),
            bodyWidget: Column(
              children: [
                SizedBox(height: 60),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/traveller-3.png',
                    height: 400,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  "Start Your Journey",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    // letterSpacing: .3,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  "Plan trips, save favorites and enjoy your adventures.",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blueGrey,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],

        // ================= BUTTONS =================
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 19
          ),
        ),
        next: Icon(Icons.arrow_forward, color: Colors.purple),
        done: Text(
          "Done",
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 19

          ),
        ),

        // ================= DOTS =================
        dotsDecorator: DotsDecorator(
          size: Size(8, 8),
          activeSize: Size(26, 8),
          color: Colors.purple.shade100,
          activeColor: Colors.purple,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),

        controlsMargin: EdgeInsets.only(bottom: 40),
        onSkip: () {},
        onDone: () {},
      ),
    );
  }
}
