import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/drawer_widget.dart';
import 'package:responsive_ui/widgets/responsive_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //ResponsiveWidget.isMobile(context) renvoi true si l'écran est <=600
    final isMobile = ResponsiveWidget.isMobile(context);
    return Scaffold(
      appBar: AppBar(title: Text("Tour App - responsive"),),
      drawer: isMobile ? Drawer(child: DrawerWidget(),): null,
      body: ResponsiveWidget(
        mobile: buildMobile(),
        tablet: buildTablet(),
        desktop: buildDesktop(),
      ),
    );
  }

  Widget buildMobile() {
    debugPrint("m");
    return Container(color: Colors.red, child: Center(child: Text("mobile")));
  }

  Widget buildTablet() {
    debugPrint("t");
    return Container(color: Colors.blue, child: Center(child: Text("tablet")));
  }

  Widget buildDesktop() {
    debugPrint("d");
    return Container(
      color: Colors.orange,
      child: Center(child: Text("desktop")),
    );
  }
}
