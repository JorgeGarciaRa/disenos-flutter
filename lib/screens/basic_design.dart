import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Image(image: AssetImage('assets/landscape.jpg')),
      const Title(),
      const ButtonSection(),

      //descripcion
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const Text(
            'Labore minim voluptate consequat ad quis aliqua quis. Dolor aliqua anim est sit ipsum labore. Irure magna ad velit dolore consectetur sint pariatur. Minim incididunt eu incididunt voluptate aute qui dolor reprehenderit ullamco laboris.'),
      ),
    ]));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text(
              'Primer Texto ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Segundo Texto ',
              style: TextStyle(color: Colors.black45),
            )
          ]),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'call'),
          CustomButton(icon: Icons.map_outlined, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
