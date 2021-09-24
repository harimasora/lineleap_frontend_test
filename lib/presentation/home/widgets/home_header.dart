import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF00172E).withAlpha(153),
      child: SafeArea(
        child: SizedBox(
          height: ResponsiveWidget.isSmallScreen(context) ? null : 90.0,
          child: !ResponsiveWidget.isSmallScreen(context)
              ? Row(
                  children: [
                    const Text('Brand Embassors'),
                    const Text('Venue Owners'),
                    const Text('Buy Passes'),
                    const Icon(Icons.search),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Download the App'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.person),
                          Text('My account'),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    PopupMenuButton(
                      itemBuilder: (context) {
                        return <PopupMenuEntry>[
                          const PopupMenuItem(child: Text('Brand Embassors')),
                          const PopupMenuItem(child: Text('Venue Owners')),
                          const PopupMenuItem(child: Text('Buy Passes')),
                          const PopupMenuItem(child: Icon(Icons.search)),
                          PopupMenuItem(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Download the App'),
                            ),
                          ),
                          PopupMenuItem(
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(Icons.person),
                                  Text('My account'),
                                ],
                              ),
                            ),
                          ),
                        ];
                      },
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
