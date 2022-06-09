import 'package:flutter/material.dart';
import 'package:web_app/responsive/desktop_body.dart';
import 'package:web_app/responsive/mobile_body.dart';
import 'package:web_app/responsive/responsive_layout.dart';
import 'package:web_app/verification/desktopverification.dart';
import 'package:web_app/verification/mobileverification.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
       // mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}


class intuu extends StatelessWidget {
  const intuu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: Verification(),
        // mobileBody: MyMobileBody(),
        desktopBody: desktopverification(),
      ),
    );
  }
}
