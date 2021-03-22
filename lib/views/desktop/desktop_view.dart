import 'package:flutter/material.dart';
import 'package:web_w_kopi/views/desktop/component/content.dart';
import 'package:web_w_kopi/views/desktop/component/sidebar.dart';

class DesktopView extends StatelessWidget {

  final String content;

  DesktopView({this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Navbar.isDesktop(),
      body: Container(
        child: Row(
          children: [
            Sidebar(contentView: content,),
            Content(contentView: content,)
          ],
        ),
      ),
    );
  }
}
