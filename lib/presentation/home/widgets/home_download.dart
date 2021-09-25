import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';

class HomeDownload extends StatelessWidget {
  const HomeDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Stack(
        children: [
          Positioned(
            top: 105,
            left: -125,
            width: 737,
            child: Image.asset('assets/blob.png'),
          ),
          Positioned(
            top: 67,
            left: 91,
            width: 417,
            child: Image.asset('assets/phone.png'),
          ),
          ResponsiveContainer(
            child: Column(
              children: [
                const SizedBox(height: 144),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 544,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 445,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Own Your Night',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                    fontFamily: 'Lato',
                                    fontSize: 24,
                                    letterSpacing: 0.20000000298023224,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Download the App',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Lato',
                                    fontSize: 44,
                                    letterSpacing: -0.5,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                  ),
                                ),
                                SizedBox(height: 32),
                                Text(
                                  'Skip the line, order drinks, purchcase event tickets, and much more all your favorite bars!',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.699999988079071),
                                    fontFamily: 'Lato',
                                    fontSize: 20,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 56),
                          Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _FeatureTile(
                                    icon: Image.asset('assets/skip.png'),
                                    title: 'LineSkip',
                                    description:
                                        'LineSkip passes let you skip long lines at your favorite bars, venues, and events.',
                                  ),
                                  const SizedBox(height: 32),
                                  _FeatureTile(
                                    icon: Image.asset('assets/drinks.png'),
                                    title: 'Drinks',
                                    description:
                                        'Order your drinks right from your phone. No more splitting tabs or soggy receipts!',
                                  ),
                                  const SizedBox(height: 32),
                                  _FeatureTile(
                                    icon: Image.asset('assets/cash.png'),
                                    title: 'Exclusive Deals',
                                    description: 'Use LineLeap for exclusive deals on your favorite drinks!',
                                  ),
                                  const SizedBox(height: 32),
                                ],
                              ),
                              const SizedBox(width: 32),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _FeatureTile(
                                    icon: Image.asset('assets/cover.png'),
                                    title: 'Cover',
                                    description:
                                        'Ditch the ATM! Pay with Venmo, PayPal, or credit card using the LineLeap App.',
                                  ),
                                  const SizedBox(height: 32),
                                  _FeatureTile(
                                    icon: Image.asset('assets/events.png'),
                                    title: 'Event Tickets',
                                    description:
                                        'Get tickerts and VIP access to dope concerts you won’t find anywhere else.',
                                  ),
                                  const SizedBox(height: 32),
                                  _FeatureTile(
                                    icon: Image.asset('assets/reservations.png'),
                                    title: 'Reservations',
                                    description: 'Save your spot in line or grab the perfect table in seconds.',
                                  ),
                                  const SizedBox(height: 32),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 56),
                          Row(
                            children: [
                              SizedBox(
                                width: 178,
                                child: Image.asset('assets/google_play.png'),
                              ),
                              const SizedBox(width: 16),
                              SizedBox(
                                width: 178,
                                child: Image.asset('assets/app_store.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 208),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureTile extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;

  const _FeatureTile({
    required this.icon,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 42,
            height: 40,
            child: icon,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 24,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    fontFamily: 'Lato',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
