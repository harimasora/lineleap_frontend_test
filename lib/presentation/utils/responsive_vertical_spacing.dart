import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';

class ResponsiveVerticalSpacing extends StatelessWidget {
  const ResponsiveVerticalSpacing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: SizedBox(height: 80),
      mediumScreen: SizedBox(height: 40),
      smallScreen: SizedBox(height: 24),
    );
  }
}
