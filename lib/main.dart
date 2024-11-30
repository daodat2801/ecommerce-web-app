import 'package:flutter/material.dart';
import 'commons/widgets/header.dart';
import 'commons/widgets/footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Header(),
            Expanded(child: Container()),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
