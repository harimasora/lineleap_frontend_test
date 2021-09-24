import 'dart:async';

import 'package:flutter/material.dart';
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
  const _HeroSearchFormField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.search),
        hintText: 'Search Events, Venues, Artists and Passes',
      ),
    );
  }
}

class _HeroLocationPicker extends StatelessWidget {
  const _HeroLocationPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.location_on_outlined),
        hintText: 'All locations',
      ),
      items: const [],
    );
  }
}

class _HeroSearchButton extends StatelessWidget {
  const _HeroSearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Text('Search'),
      ),
    );
  }
}

class _HeroActionsBar extends StatelessWidget {
  const _HeroActionsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Expanded(
            flex: 5,
            child: _HeroSearchFormField(),
          ),
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
