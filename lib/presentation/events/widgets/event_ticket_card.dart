import 'package:flutter/material.dart';

class EventTicketCard extends StatelessWidget {
  const EventTicketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: const Color.fromRGBO(25, 46, 67, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 352 / 198,
              child: Image.asset(
                'assets/hero_image.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text(
                        'Diplo Presents: Higher Ground',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Lato',
                          fontSize: 24,
                          height: 1.3333333333333333,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          _EventTicketBodyText(
                            text: 'Diplo',
                          ),
                          SizedBox(height: 4),
                          _EventTicketBodyText(
                            text: 'Fri, August 26, 6:00 PM  +2 more',
                          ),
                          SizedBox(height: 4),
                          _EventTicketBodyText(
                            text: 'Champs Downtown • State College, PA',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(6, 130, 255, 1),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: const Text(
                      'From \$99',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Lato',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EventTicketBodyText extends StatelessWidget {
  final String text;
  const _EventTicketBodyText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.5),
        fontFamily: 'Lato',
        fontSize: 16,
        height: 1,
      ),
    );
  }
}
