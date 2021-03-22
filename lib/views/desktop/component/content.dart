import 'package:flutter/material.dart';
import 'package:web_w_kopi/views/content/about.dart';
import 'package:web_w_kopi/views/content/contact.dart';
import 'package:web_w_kopi/views/content/home.dart';

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
    switch (widget.contentView) {
      case 'Home':
        content = Home();
        break;
      case 'About':
        content = About();
        break;
      case 'Contact':
        content = Contact();
        break;
    }

    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 10 / 12,
        child: SingleChildScrollView(child: content));
  }
}
