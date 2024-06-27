import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const AnimatedScreen());

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

//variables 
double _width=50;
double _height=50;
Color _color = Colors.blueGrey;
BorderRadiusGeometry _boderRadius = BorderRadius.circular(10);

void changeShape(){
  _width +=30;
  _height +=30;
  _color = Colors.pink.shade50;
  _boderRadius = BorderRadius.circular(30);
  setState(() {
    
  });
}

void changeShape1(){
  final rndm = Random();
  _width = rndm.nextInt(300).toDouble() + 70;
  _height = rndm.nextInt(300).toDouble() + 70;
  _color = const Color.fromARGB(255, 255, 255, 1);
  _boderRadius = BorderRadius.circular(rndm.nextInt(100).toDouble());

  setState(() {
    
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Material App Bar',
          style: TextStyle(
            color: Colors.white
          ),
          ),
        ),
        body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
              color: _color, borderRadius: _boderRadius),
        )
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () => changeShape1(),
        child: const Icon(
          Icons.perm_camera_mic,
          color: Colors.white,
        ),)
    );
  }
}