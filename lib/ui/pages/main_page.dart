import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_slider/ui/widgets/movie_box.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentPageValue = 0;
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.6);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGaforuzc7tx2PLXcQR4SCVqvgZ4AKKz3kQA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQARw9ejQy1OsGO3cFrpB7sXWMRTBRliiRHIsIas-rTrK_KD4k3vKzn9bQLHZGBaUG-41M&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWWTK6KwMBEhvA1T8K7dWAR2EC-NfGesOua3FwBoAnB8Q0OEBRrpQWFYjs9Riqoo56YpM&usqp=CAU",
      "https://i.pinimg.com/474x/31/8e/89/318e89b38094757685a7c9b2237f1e71.jpg"
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Widget Sliders",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: PageView.builder(
          controller: controller,
          itemBuilder: (context, index) {
            double difference = index - currentPageValue;
            if (difference < 0) {
              difference *= -1;
            }
            difference = min(1, difference);
            return Center(
              child: MovieBox(
                urls[index],
                scale: 1 - (difference * 0.3),
              ),
            );
          },
          itemCount: urls.length,
        ));
  }
}
