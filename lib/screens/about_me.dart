import 'package:unit6_assignment_seraspi/components/tab_widget_1.dart';
import 'package:unit6_assignment_seraspi/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}
class _About_MeState extends State<About_Me> {
  //List of tab screens
  List<Widget> _tabScreens=[
    TabWidget1(),
    TabWidget2(),
  ];
  //List of tab Items
  List<Widget> _tabItems = [
    Tab(icon: Icon(Icons.phone), text:"Contacts"),
    Tab(icon: Icon(Icons.image), text:"Images"),
  ];

  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length:_tabItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("About Me"),
          bottom: TabBar(
            tabs: _tabItems,
            ),
        ),
        body: TabBarView(
          children: _tabScreens,
        ),
      ),
    );
  }
}