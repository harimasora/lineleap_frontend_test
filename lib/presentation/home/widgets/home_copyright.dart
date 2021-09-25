import 'package:flutter/material.dart';
import 'package:lineleap_frontend_test/presentation/utils/responsive_container.dart';

class HomeCopyright extends StatelessWidget {
  const HomeCopyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(25, 46, 67, 1),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ResponsiveContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    '© LineLeap 2020',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontFamily: 'Lato',
                      fontSize: 12,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Privacy Policy',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontFamily: 'Lato',
                      fontSize: 12,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Terms & Conditions',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontFamily: 'Lato',
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
