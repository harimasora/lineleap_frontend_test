import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/constants.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';

const _textStyle = TextStyle(color: Color(0x80FFFFFF), fontFamily: 'Lato', fontSize: 12);

class HomeCopyright extends StatelessWidget {
  const HomeCopyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ResponsiveContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  flex: 2,
                  child: Text('© LineLeap 2020', textAlign: TextAlign.left, style: _textStyle),
                ),
                Expanded(
                  flex: 1,
                  child: Text('Privacy Policy', textAlign: TextAlign.left, style: _textStyle),
                ),
                Expanded(
                  flex: 1,
                  child: Text('Terms & Conditions', textAlign: TextAlign.left, style: _textStyle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
