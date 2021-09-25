import 'package:flutter/material.dart';

class SeparatedRow extends Row {
  final double horizontalSpacing;

  SeparatedRow({
    required List<Widget> children,
    required this.horizontalSpacing,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.min,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
    Key? key,
  }) : super(
          key: key,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          children: List.generate(
            children.length + children.length - 1,
            (index) => index == 0
                ? children[0]
                : index % 2 == 1
                    ? SizedBox(width: horizontalSpacing)
                    : children[index ~/ 2],
          ),
        );
}
