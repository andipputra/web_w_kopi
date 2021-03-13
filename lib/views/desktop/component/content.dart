import 'package:flutter/material.dart';
import 'package:web_w_kopi/views/content/home.dart';
import 'package:web_w_kopi/views/desktop/component/sidebar.dart';

class Content extends StatefulWidget {
  final String contentView;

  Content({this.contentView});

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  Widget content;

  @override
  Widget build(BuildContext context) {
    switch (widget.contentView){
      case 'Home' : 
          content = Home();
          break;
      case 'About' : 
          content = Sidebar();
          break;
    }

    return content;
  }
}