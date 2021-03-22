import 'package:flutter/material.dart';
import 'package:web_w_kopi/config/application.dart';
import 'package:web_w_kopi/config/style/color_resource.dart';

class Sidebar extends StatefulWidget {
  final String contentView;

  Sidebar({this.contentView});

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  List<String> menu = ['Home', 'About', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 2 / 12,
      color: ColorResource.colorText,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset('assets/img/logo_worthit.png'),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: menu.length,
              itemBuilder: (context, i) {
                if (widget.contentView == menu[i]) {
                  return ListTile(
                    leading: Icon(
                      Icons.home,
                      color: ColorResource.colorPrimary,
                    ),
                    title: Text(
                      menu[i],
                      style: TextStyle(color: ColorResource.colorPrimary),
                    ),
                    onTap: () {
                      print("On tap ${menu[i]}");
                    },
                  );
                } else {
                  return ListTile(
                    leading: Icon(
                      Icons.home,
                      color: ColorResource.colorSecondary,
                    ),
                    title: Text(
                      menu[i],
                      style: TextStyle(color: ColorResource.colorSecondary),
                    ),
                    onTap: () {
                      Application.router.navigateTo(context,  "${menu[i].toLowerCase()}");
                    },
                  );
                }
              })
        ],
      ),
    );
  }
}
