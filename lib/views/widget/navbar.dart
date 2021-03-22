import 'package:flutter/material.dart';
import 'package:web_w_kopi/config/style/color_resource.dart';

class Navbar {
  static isMobile() {}

  static isDesktop() {
    return AppBar(
      backgroundColor: ColorResource.colorText,
      elevation: 0.0,
      // title: Text("Worth It COFFEE", style: TextStyle(
      //   color: ColorResource.colorSecondary
      // ),),
      title: Image.asset('assets/img/logo_worthit.png', width: 120,),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Row(
            children: [
              IconButton(
                icon: Image.asset('assets/img/logo_wothit.png'),
                onPressed: () {},
              ),
              TextButton(
                child: Text(
                  'Home',
                  style: TextStyle(color: ColorResource.colorPrimary),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Text(
                  'About',
                  style: TextStyle(color: ColorResource.colorSecondary),
                ),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
