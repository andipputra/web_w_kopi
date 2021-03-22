import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeImageSlider extends StatefulWidget {
  @override
  _HomeImageSliderState createState() => _HomeImageSliderState();
}

class _HomeImageSliderState extends State<HomeImageSlider> {
  final _images = [
    'https://scontent-cgk1-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/130837842_222244182609901_5651477684534464497_n.jpg?tp=1&_nc_ht=scontent-cgk1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=zFh1tsdeorMAX8Niirk&oh=bbdfed64f85d5bef49edab8f15a2a22b&oe=60799824',
    'https://scontent-cgk1-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/145567238_122733663067297_4364381456111559134_n.jpg?tp=1&_nc_ht=scontent-cgk1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=YzyrDcMQXIQAX8RtNMr&oh=c2133e938fe51ec8be0701c9279b85ae&oe=607A28C5',
    'https://instagram.fcgk8-2.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/129340482_1588383951549741_5546764199770317053_n.jpg?tp=1&_nc_ht=instagram.fcgk8-2.fna.fbcdn.net&_nc_cat=109&_nc_ohc=DENOLarsiOoAX-aCNGB&oh=e1cca4e7cc9228859e70668527dda099&oe=60774821'
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> carousel = _images
        .map((img) =>Card(
          
          child: Row(
            children: [
              Image.network(img),
              Text("Ini text loh ya")
            ],
          ),
        ))
        .toList();

    return Center(
      child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: carousel,
              ),
            ],
          )),
    );
  }
}
