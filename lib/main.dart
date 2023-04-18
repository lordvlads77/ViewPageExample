import 'package:flutter/material.dart';
import 'pages.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page Viewer',
      home: Pages(),
    );
  }
}


