import 'package:flutter/material.dart';
import 'package:web_w_kopi/views/desktop/component/content.dart';
import 'package:web_w_kopi/views/desktop/component/sidebar.dart';
import 'package:web_w_kopi/views/widget/navbar.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Navbar.isDesktop(),
      body: SingleChildScrollView(
        child: Container(
          child: Row(
            children: [
              Sidebar(),
              Content(contentView: 'Home',)
            ],
          ),
        ),
      ),
    );
  }
}
