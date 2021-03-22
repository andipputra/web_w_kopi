import 'package:flutter/material.dart';
import 'package:web_w_kopi/views/content/home_component/_home_image_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              HomeImageSlider(),
            ],
          ),
        ],
      ),
    );
  }
}