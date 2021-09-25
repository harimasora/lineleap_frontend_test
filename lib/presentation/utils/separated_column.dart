import 'package:flutter/material.dart';

class SeparatedColumn extends Column {
  final double verticalSpacing;

  SeparatedColumn({
    required List<Widget> children,
    required this.verticalSpacing,
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
                    ? SizedBox(height: verticalSpacing)
                    : children[index ~/ 2],
          ),
        );
}
