import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveWidget(
        largeScreen: Scaffold(
          appBar: AppBar(
            title: const Text('Large'),
          ),
        ),
        mediumScreen: Scaffold(
          appBar: AppBar(
            title: const Text('Medium'),
          ),
        ),
        smallScreen: Scaffold(
          appBar: AppBar(
            title: const Text('Small'),
          ),
        ),
      ),
    );
  }
}
