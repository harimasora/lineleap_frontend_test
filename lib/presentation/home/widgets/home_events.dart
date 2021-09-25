import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/events/widgets/event_ticket_card.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';

const events = <EventTicketCard>[
  EventTicketCard(
    assetPath: 'assets/event1.png',
    title: 'Diplo Presents: Higher Ground',
    info: ['Diplo', 'Fri, August 26, 6:00 PM +2 more', 'Champs Downtown • State College, PA'],
  ),
  EventTicketCard(
    assetPath: 'assets/event2.png',
    title: 'Trippie Redd - Neon Shark Live',
    info: ['Trippie Redd', 'Fri, August 26, 6:00 PM  +2 more', 'Rick’s American Cafe • Ann Arbor, MI'],
  ),
  EventTicketCard(
    assetPath: 'assets/event3.png',
    title: 'Kacey Musgraves - oh, what a word: tour II',
    info: [
      'Kacey Musgraves, Maggie Rogers, Yola',
      'Fri, August 26, 6:00 PM  +2 more',
      'Bridgestone Arena • Nashville, TN'
    ],
  ),
  EventTicketCard(
    assetPath: 'assets/event4.png',
    title: 'Diplo Presents: Higher Ground',
    info: ['DOSK', 'Fri, August 26, 6:00 PM +2 more', 'Champs Downtown • State College, PA'],
  ),
  EventTicketCard(
    assetPath: 'assets/event5.png',
    title: 'Diplo Presents: Higher Ground',
    info: ['Wale', 'Fri, August 26, 6:00 PM +2 more', 'Champs Downtown • State College, PA'],
  ),
  EventTicketCard(
    assetPath: 'assets/event6.png',
    title: 'Back to School Bar Crawl',
    info: ['Fri, August 26, 6:00 PM +2 more', 'Champs Downtown • State College, PA'],
  ),
];

class HomeEvents extends StatelessWidget {
  const HomeEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Event Tickets',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 32),
            GridView.builder(
              shrinkWrap: true,
              itemCount: events.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 32,
                mainAxisSpacing: 32,
                childAspectRatio: 352 / 449,
              ),
              itemBuilder: (BuildContext context, int index) {
                return events[index];
              },
            ),
            const SizedBox(height: 64),
            Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    width: constraints.maxWidth / 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white.withOpacity(0.2),
                        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
                      ),
                      child: const Text(
                        'See 6 More',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
