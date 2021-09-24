import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  static double largeScreenBreakpoint = 1120;
  static double mediumScreenBreakpoint = 800;

  /// Large screen is any screen whose width is more than [largeScreenBreakpoint] pixels
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > largeScreenBreakpoint;
  }

  /// Medium screen is any screen whose width is less than [largeScreenBreakpoint] pixels, and more than [mediumScreenBreakpoint] pixels
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > mediumScreenBreakpoint &&
        MediaQuery.of(context).size.width < largeScreenBreakpoint;
  }

  /// Small screen is any screen whose width is less than [mediumScreenBreakpoint] pixels
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumScreenBreakpoint;
  }

  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({Key? key, required this.largeScreen, this.mediumScreen, this.smallScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > largeScreenBreakpoint) {
        return largeScreen;
      } else if (constraints.maxWidth > mediumScreenBreakpoint && constraints.maxWidth < largeScreenBreakpoint) {
        //if medium screen not available, then return large screen
        return mediumScreen ?? largeScreen;
      } else {
        //if small screen implementation not available, try medium screen then large screen
        return smallScreen ?? mediumScreen ?? largeScreen;
      }
    });
  }
}

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
