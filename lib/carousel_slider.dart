import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// Main StatefulWidget for the image slider
class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  // List of images to display in the carousel
  List<Image> imageList = [
    Image.asset("images/banner-1.jpg"),
    Image.asset("images/banner-2.jpg"),
    Image.asset("images/banner-3.jpg"),
    Image.asset("images/banner-4.jpg"),
    Image.asset("images/banner-5.jpg"),
    Image.asset("images/banner-6.jpg"),
    Image.asset("images/banner-7.jpg"),
  ];

  // Tracks the currently active index in the carousel
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Auto Slider")),
      body: Column(
        children: [
          // CarouselSlider.builder creates a carousel with dynamic content
          CarouselSlider.builder(
            itemCount: imageList.length,
            itemBuilder: (context, index, realIndex) {
              return imageList[index]; // Display each image in the carousel
            },
            options: CarouselOptions(
              height: 300, // Height of the carousel
              autoPlay: true, // Enable automatic sliding
              enlargeCenterPage: true, // Center image is enlarged
              aspectRatio: 16 / 10, // Width to height ratio
              viewportFraction: 0.8, // Fraction of next/prev image visible
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index; // Update indicator when page changes
                });
              },
            ),
          ),

          // Row of dots below the carousel to indicate current image
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(imageList.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 12.0,
                width: currentIndex == index ? 24 : 12, // Active dot is wider
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? Colors.deepPurple // Active dot color
                      : Colors.black54, // Inactive dot color
                  borderRadius: BorderRadius.circular(6.8),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
