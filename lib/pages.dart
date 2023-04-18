import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 1
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
            OnePage(),
            TwoPage(),
            ThreePage(),
        ],
      ),
    );
  }
  @override
  void delete() {
    _pageController.dispose();
    super.dispose();
  }
}

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.indigo,
      child: Text(
        'Tacos',
        style: TextStyle(fontSize: 50, color: Colors.white),
      ),
    );
  }
}

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      child: Text(
        'Hamburguesas',
        style: TextStyle(
          fontSize: 45,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ThreePage extends StatelessWidget {
  const ThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.teal,
      child: const Text(
        'Un Sushi',
        style: TextStyle(
          fontSize: 50,
          color: Colors.black,
        ),
      ),
    );
  }
}



