import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/events/widgets/event_ticket_card.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';

const events = <EventTicketCard>[
  EventTicketCard(),
  EventTicketCard(),
  EventTicketCard(),
  EventTicketCard(),
  EventTicketCard(),
  EventTicketCard(),
];

class HomeEvents extends StatelessWidget {
  const HomeEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Event Tickets',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Lato',
              fontSize: 32,
              height: 1,
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(255, 255, 255, 0.2),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
            child: const Center(
              child: Text(
                'See 6 More',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Lato',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
