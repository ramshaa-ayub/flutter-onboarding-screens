import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screens/carousel_slider.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:carousel_slider/carousel_controller.dart';

// Main onboarding screen with multiple pages
class IntroScreen extends StatefulWidget {
  IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool _isSkipHovered = false; // Track hover state for Skip button
  bool _isDoneHovered = false; // Track hover state for Done button

  // Builds a hoverable Skip/Done button
  Widget _buildHoverButton(
    String text,
    bool isHovered,
    VoidCallback onTap, {
    double fontSize = 19,
  }) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        if (text == "Skip") _isSkipHovered = true;
        else _isDoneHovered = true;
      }),
      onExit: (_) => setState(() {
        if (text == "Skip") _isSkipHovered = false;
        else _isDoneHovered = false;
      }),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: isHovered ? Colors.white : Colors.purple,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.purple),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Playfair",
              fontSize: fontSize,
              fontWeight: FontWeight.w800,
              color: isHovered ? Colors.purple : Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),

        // ======================== ONBOARDING PAGES ========================
        pages: [
          // Page 1
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
                    fontFamily: "Playfair",
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  "Explore top cities, attractions, restaurants, hotels and more.",
                  style: TextStyle(
                    fontFamily: "Playfair",
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    color: Color.fromARGB(255, 54, 56, 58),
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Page 2
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
                    fontFamily: "Playfair",
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  "Discover secret spots and\nfamous landmarks in Pakistan.",
                  style: TextStyle(
                    fontFamily: "Playfair",
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    color: Color.fromARGB(255, 54, 56, 58),
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Page 3
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
                    fontFamily: "Playfair",
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  "Plan trips, save favorites and enjoy your adventures.",
                  style: TextStyle(
                    fontFamily: "Playfair",
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    color: Color.fromARGB(255, 54, 56, 58),
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],

        // ======================== BUTTONS ========================
        showSkipButton: true,
        skip: _buildHoverButton("Skip", _isSkipHovered, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ImageSlider()),
          );
        }),
        next: Icon(Icons.arrow_forward, color: Colors.purple),
        done: _buildHoverButton("Done", _isDoneHovered, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ImageSlider()),
          );
        }),

        // ======================== DOTS INDICATOR ========================
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

        // Backup triggers
        onSkip: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ImageSlider()),
          );
        },
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ImageSlider()),
          );
        },
      ),
    );
  }
}
