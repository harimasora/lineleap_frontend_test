import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/constants.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Size>(
      future: _calculateImageAssetDimension('assets/hero_image.png'),
      builder: (context, snapshot) {
        return AspectRatio(
          aspectRatio: snapshot.hasData ? snapshot.data!.aspectRatio : 1,
          child: Stack(
            children: const [
              _HeroImage(),
              ResponsiveContainer(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: _HeroActionsBar(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<Size> _calculateImageAssetDimension(String assetPath) {
    Completer<Size> completer = Completer();
    Image image = Image.asset(assetPath);
    image.image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener(
        (ImageInfo image, bool synchronousCall) {
          var myImage = image.image;
          Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
          completer.complete(size);
        },
      ),
    );
    return completer.future;
  }
}

class _HeroSearchFormField extends StatelessWidget {
  final double basePadding;
  const _HeroSearchFormField({Key? key, this.basePadding = 24}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Row(
          children: [
            SizedBox(width: basePadding),
            Image.asset('assets/search_dark.png', width: basePadding),
            SizedBox(width: basePadding),
          ],
        ),
        prefixIconConstraints: BoxConstraints(maxHeight: basePadding, maxWidth: basePadding * 3),
        hintText: 'Search Events, Venues, Artists and Passes',
        hintStyle: TextStyle(fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 16),
        contentPadding: EdgeInsets.symmetric(vertical: basePadding),
        border: InputBorder.none,
      ),
    );
  }
}

class _HeroLocationPicker extends StatelessWidget {
  final double basePadding;
  const _HeroLocationPicker({Key? key, this.basePadding = 24}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: basePadding),
        Image.asset('assets/map_pin.png', width: basePadding),
        SizedBox(width: basePadding),
        DropdownButton(
          icon: Row(
            children: [
              SizedBox(width: basePadding * 2 / 3),
              Image.asset('assets/chevron_down.png', width: basePadding),
              SizedBox(width: basePadding * 7 / 3),
            ],
          ),
          underline: const SizedBox.shrink(),
          hint: Text('All locations', style: TextStyle(fontSize: ResponsiveWidget.isLargeScreen(context) ? 20 : 16)),
          items: const [],
        ),
      ],
    );
  }
}

class _HeroSearchButton extends StatelessWidget {
  final double basePadding;
  const _HeroSearchButton({Key? key, this.basePadding = 24}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: callToActionButtonColor,
        child: Padding(
          padding: EdgeInsets.all(basePadding),
          child: Text(
            'Search',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: ResponsiveWidget.isLargeScreen(context) ? 18 : 14,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _HeroActionsBar extends StatelessWidget {
  const _HeroActionsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double basePadding;
    if (ResponsiveWidget.isSmallScreen(context)) {
      basePadding = 8;
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      basePadding = 16;
    } else {
      basePadding = 24;
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: basePadding * 3,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: _HeroSearchFormField(basePadding: basePadding),
            ),
            _ActionBarVerticalDevider(basePadding: basePadding),
            Expanded(
              flex: 2,
              child: _HeroLocationPicker(basePadding: basePadding),
            ),
            Expanded(
              flex: 1,
              child: _HeroSearchButton(basePadding: basePadding),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionBarVerticalDevider extends StatelessWidget {
  final double basePadding;
  const _ActionBarVerticalDevider({
    this.basePadding = 24,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: basePadding * 1.5,
      width: 1,
      color: scaffoldBackgroundColor.withOpacity(0.25),
    );
  }
}

class _HeroImage extends StatelessWidget {
  const _HeroImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/hero_image.png",
      fit: ResponsiveWidget.isSmallScreen(context) ? BoxFit.cover : null,
      height: ResponsiveWidget.isSmallScreen(context) ? 200 : null,
    );
  }
}
