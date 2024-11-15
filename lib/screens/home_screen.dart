import 'package:flutter/material.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture and Navigation"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is supposed to be a Home Screen"),
          SizedBox(height: 20),
          
          // INSERT CODE BELOW
          ElevatedButton(
          child: Text("Go to About Me"),
          onPressed: () {
            Navigator.pushNamed(context, 'AboutMeScreen');
          },
          style: ElevatedButton.styleFrom(elevation: 5.0,),
        )
        ],
      ),
    );
  }
}