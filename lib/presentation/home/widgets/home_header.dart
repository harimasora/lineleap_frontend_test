import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/constants.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';
import 'package:lineleap_frontend_test/presentation/utils/separated_row.dart';

const TextStyle _textStyle = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: scaffoldBackgroundColor.withOpacity(0.6),
      child: SafeArea(
        child: ResponsiveWidget.isLargeScreen(context)
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: ResponsiveContainer(
                  child: Row(
                    children: [
                      const _HeaderLogo(),
                      const Spacer(),
                      SeparatedRow(
                        children: const [
                          Text('Brand Ambassadors', style: _textStyle),
                          Text('Venue Owners', style: _textStyle),
                          Text('Buy Passes', style: _textStyle),
                        ],
                        horizontalSpacing: 32,
                      ),
                      const SizedBox(width: 40),
                      SeparatedRow(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/search.png',
                              width: 24,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Download the App', style: _textStyle),
                            style: ElevatedButton.styleFrom(
                              primary: callToActionButtonColor,
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset('assets/user.png', width: 24),
                                const SizedBox(width: 8),
                                const Text('My account', style: _textStyle),
                              ],
                            ),
                          ),
                        ],
                        horizontalSpacing: 32,
                      )
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ResponsiveContainer(
                  child: Row(
                    children: [
                      const _HeaderLogo(),
                      const Spacer(),
                      PopupMenuButton(
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
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
      ),
    );
  }
}

class _HeaderLogo extends StatelessWidget {
  const _HeaderLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo.png',
      height: 30,
    );
  }
}
