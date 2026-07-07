import 'package:flutter/material.dart';

import '../../../core/gen/assets.gen.dart';

class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.timeBg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(),
    );
  }
}
