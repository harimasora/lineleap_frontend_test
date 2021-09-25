import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/separated_column.dart';

const _buyNowButtonColor = Color.fromRGBO(6, 130, 255, 1);

class EventTicketCard extends StatelessWidget {
  final String assetPath;
  final String title;
  final List<String> info;
  const EventTicketCard({
    required this.assetPath,
    required this.title,
    required this.info,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: const Color.fromRGBO(25, 46, 67, 1),
        // height: 352+251,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 352 / 198,
              child: Image.asset(
                assetPath,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
            ),
            AspectRatio(
              aspectRatio: 352 / 251,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        SeparatedColumn(children: [
                          ...info.map((str) => _EventTicketBodyText(text: str)),
                        ], verticalSpacing: 4),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        primary: _buyNowButtonColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'From \$99',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
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
      style: TextStyle(
        color: Colors.white.withOpacity(0.5),
        fontSize: 16,
      ),
    );
  }
}
