import 'package:flutter/material.dart';

import 'responsive_widget.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  const ResponsiveContainer({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late double maxWidth;
    if (ResponsiveWidget.isSmallScreen(context)) {
      maxWidth = double.infinity;
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      maxWidth = ResponsiveWidget.mediumScreenBreakpoint;
    } else {
      maxWidth = ResponsiveWidget.largeScreenBreakpoint;
    }
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
