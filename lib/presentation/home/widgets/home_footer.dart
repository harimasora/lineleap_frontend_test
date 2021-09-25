import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';
import 'package:lineleap_frontend_test/presentation/utils/separated_column.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isLargeScreen(context)
          ? const EdgeInsets.only(top: 80, bottom: 40)
          : const EdgeInsets.only(top: 32, bottom: 32),
      child: ResponsiveContainer(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    child: Image.asset('assets/logo.png'),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Image.asset('assets/instagram.png', height: 20),
                      const SizedBox(width: 24),
                      Image.asset('assets/facebook.png', height: 20),
                      const SizedBox(width: 24),
                      Image.asset('assets/twitter.png', height: 20),
                      const SizedBox(width: 24),
                      Image.asset('assets/tiktok.png', height: 20),
                    ],
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Download the App'),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: FooterColumn(
                title: 'Company',
                links: ['Contact Us', 'Brand Ambassadors', 'About Us'],
              ),
            ),
            const Expanded(
              flex: 1,
              child: FooterColumn(
                title: 'Customers',
                links: ['Buy Event Tickets', 'Buy Gift Cards', 'Refunds', 'Merch'],
              ),
            ),
            const Expanded(
              flex: 1,
              child: FooterColumn(
                title: 'Venue Owners',
                links: ['Learn More', 'Platform', 'Pricing', 'Schedule Demo', 'Dashboard Login'],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> links;
  const FooterColumn({
    required this.title,
    required this.links,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      ...links.map(
        (link) => Text(
          link,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 16,
          ),
        ),
      )
    ];
    return SeparatedColumn(
      children: items,
      verticalSpacing: 16,
    );
  }
}
