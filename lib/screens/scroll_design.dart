import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.5,
        0.5
      ],
          colors: [
        Color(0xff5EE8C5),
        Color(0xff30BAD6),
      ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Background(), MainContent()],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        color: const Color(0xff30BAD6),
        height: double.infinity,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '11º',
            style: textStyle,
          ),
          const Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 100,
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},

          // style: ButtonStyle(elevation: MaterialStateProperty.all(2), backgroundColor: Color(0xff0098FA)),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder(),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
