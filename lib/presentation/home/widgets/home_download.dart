import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';
import 'package:lineleap_frontend_test/presentation/utils/separated_column.dart';
import 'package:lineleap_frontend_test/presentation/utils/separated_row.dart';

final _featureTiles = [
  _FeatureTile(
    icon: Image.asset('assets/skip.png'),
    title: 'LineSkip',
    description: 'LineSkip passes let you skip long lines at your favorite bars, venues, and events.',
  ),
  _FeatureTile(
    icon: Image.asset('assets/drinks.png'),
    title: 'Drinks',
    description: 'Order your drinks right from your phone. No more splitting tabs or soggy receipts!',
  ),
  _FeatureTile(
    icon: Image.asset('assets/cash.png'),
    title: 'Exclusive Deals',
    description: 'Use LineLeap for exclusive deals on your favorite drinks!',
  ),
  _FeatureTile(
    icon: Image.asset('assets/cover.png'),
    title: 'Cover',
    description: 'Ditch the ATM! Pay with Venmo, PayPal, or credit card using the LineLeap App.',
  ),
  _FeatureTile(
    icon: Image.asset('assets/events.png'),
    title: 'Event Tickets',
    description: 'Get tickerts and VIP access to dope concerts you won’t find anywhere else.',
  ),
  _FeatureTile(
    icon: Image.asset('assets/reservations.png'),
    title: 'Reservations',
    description: 'Save your spot in line or grab the perfect table in seconds.',
  ),
];

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
          const _DownloadFeaturesSection(),
        ],
      ),
      mediumScreen: const _DownloadFeaturesSection(),
    );
  }
}

class _DownloadFeaturesSection extends StatelessWidget {
  const _DownloadFeaturesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: ResponsiveContainer(
        child: Padding(
          padding: const EdgeInsets.only(top: 144, bottom: 208),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 544,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 445,
                      child: _DownloadHeading(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 56.0),
                      child: Row(
                        children: [
                          SeparatedColumn(
                            children: _featureTiles.sublist(0, 3),
                            verticalSpacing: 32,
                          ),
                          const SizedBox(width: 32),
                          SeparatedColumn(
                            children: _featureTiles.sublist(3),
                            verticalSpacing: 32,
                          ),
                        ],
                      ),
                    ),
                    const _DownloadButtons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      mediumScreen: ResponsiveContainer(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 445,
                child: _DownloadHeading(),
              ),
              const SizedBox(height: 32),
              Wrap(
                children: _featureTiles,
                spacing: 16,
                runSpacing: 16,
              ),
              const SizedBox(height: 64),
              const _DownloadButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class _DownloadButtons extends StatelessWidget {
  const _DownloadButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class _DownloadHeading extends StatelessWidget {
  const _DownloadHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Own Your Night',
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Download the App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 44,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 32),
        Text(
          'Skip the line, order drinks, purchcase event tickets, and much more all your favorite bars!',
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 20,
          ),
        ),
      ],
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
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
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
