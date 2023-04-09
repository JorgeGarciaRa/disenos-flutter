import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(icon: Icons.home, text: 'General', color: Colors.purple),
          _SingleCard(
            icon: Icons.verified_user_sharp,
            text: 'Usuarios',
            color: Colors.blue,
          ),
        ]),
        TableRow(children: [
          _SingleCard(icon: Icons.reset_tv, text: 'General', color: Colors.red),
          _SingleCard(
            icon: Icons.cell_tower_rounded,
            text: 'Usuarios',
            color: Colors.amber,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.map_outlined, text: 'General', color: Colors.pink),
          _SingleCard(
            icon: Icons.share,
            text: 'Usuarios',
            color: Colors.cyan,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _SingleCard(
      {required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(text, style: TextStyle(color: color, fontSize: 18)),
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 67, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
