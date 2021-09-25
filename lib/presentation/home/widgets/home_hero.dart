import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/constants.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_widget.dart';

const _hintStyle = TextStyle(fontSize: 20);

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
  const _HeroSearchFormField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Row(
          children: [
            const SizedBox(width: 24),
            Image.asset('assets/search_dark.png', width: 24),
            const SizedBox(width: 24),
          ],
        ),
        prefixIconConstraints: const BoxConstraints(maxHeight: 24, maxWidth: 24 * 3),
        hintText: 'Search Events, Venues, Artists and Passes',
        hintStyle: _hintStyle,
        contentPadding: const EdgeInsets.symmetric(vertical: 24),
        border: InputBorder.none,
      ),
    );
  }
}

class _HeroLocationPicker extends StatelessWidget {
  const _HeroLocationPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 24),
        Image.asset('assets/map_pin.png', width: 24),
        const SizedBox(width: 24),
        DropdownButton(
          icon: Row(
            children: [
              const SizedBox(width: 16),
              Image.asset('assets/chevron_down.png', width: 24),
              const SizedBox(width: 52),
            ],
          ),
          underline: const SizedBox.shrink(),
          hint: const Text('All locations', style: _hintStyle),
          items: const [],
        ),
      ],
    );
  }
}

class _HeroSearchButton extends StatelessWidget {
  const _HeroSearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: callToActionButtonColor,
        child: const Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'Search',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 24 * 3,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Expanded(
              flex: 5,
              child: _HeroSearchFormField(),
            ),
            _ActionBarVerticalDevider(),
            Expanded(
              flex: 2,
              child: _HeroLocationPicker(),
            ),
            Expanded(
              flex: 1,
              child: _HeroSearchButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionBarVerticalDevider extends StatelessWidget {
  const _ActionBarVerticalDevider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24 * 1.5,
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
