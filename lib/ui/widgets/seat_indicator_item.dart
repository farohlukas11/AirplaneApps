import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatIndicatorItem extends StatelessWidget {
  final String nameIndicator;
  const SeatIndicatorItem({Key? key, this.nameIndicator = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: Center(
        child: Text(
          nameIndicator,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
