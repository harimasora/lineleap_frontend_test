import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/home/widgets/home_copyright.dart';
import 'package:lineleap_frontend_test/presentation/home/widgets/home_download.dart';
import 'package:lineleap_frontend_test/presentation/home/widgets/home_events.dart';
import 'package:lineleap_frontend_test/presentation/home/widgets/home_footer.dart';
import 'package:lineleap_frontend_test/presentation/home/widgets/home_hero.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_vertical_spacing.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromRGBO(0, 23, 46, 1),
        child: Column(
          children: const [
            HomeHero(),
            ResponsiveVerticalSpacing(),
            HomeEvents(),
            HomeDownload(),
            HomeFooter(),
            HomeCopyright(),
          ],
        ),
      ),
    );
  }
}
