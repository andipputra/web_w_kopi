import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_w_kopi/views/desktop/desktop_view.dart';
import 'package:web_w_kopi/views/mobile/mobile_view.dart';

class LandingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: MobileView(),
      desktop: DesktopView(),
    );
  }
}