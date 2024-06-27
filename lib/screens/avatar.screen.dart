import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patsy DC', style: TextStyle(color: Colors.white)),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Text(
              'dc',
              style: TextStyle(color: Colors.white), // Puedes agregar estilos si lo deseas
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 160,
          backgroundImage: NetworkImage(
              'https://static1.personality-database.com/profile_images/0e0f30037d354f1d838de9ec6aaefaea.png'),
        ),
      ),
    );
  }
}
