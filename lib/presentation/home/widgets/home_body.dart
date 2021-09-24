import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/home/widgets/home_hero.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HomeHero(),
        ],
      ),
    );
  }
}
