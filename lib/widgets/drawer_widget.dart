import 'package:flutter/material.dart';
import 'package:responsive_ui/data/states.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return ListView.builder(
      //+1 pour compter le header
      itemCount: allStates.length + 1,
      itemBuilder: (context, index) {
        return index == 0
            ? buildHeader(fontSize)
            : buildMenuItem(index, fontSize);
      },
    );
  }

  Widget buildMenuItem(int index, double fontSize) {
    return ListTile(
      leading: const Icon(Icons.location_city),
      title: Text(
        allStates[index - 1],
        style: TextStyle(fontSize: fontSize),
      ),
      selected: index == 1,
    );
  }

  Widget buildHeader(double fontSize) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: ExactAssetImage('images/swat.jpg'),
        ),
      ),
      child: Container(
        alignment: AlignmentDirectional.bottomStart,
        child: Text(
          'Pakistan',
          style: TextStyle(fontSize: fontSize, color: Colors.white),
        ),
      ),
    );
  }
}