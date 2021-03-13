import 'package:flutter/material.dart';
import 'package:web_w_kopi/views/utils/color_resource.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  List<String> menu = ['Home', 'About', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 6,
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
              })
        ],
      ),
    );
  }
}
