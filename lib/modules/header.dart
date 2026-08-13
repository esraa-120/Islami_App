import 'package:flutter/material.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';

class RadioHeader extends StatelessWidget {
  const RadioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 67, right: 72),
        child: SizedBox(
          width: 290,
          child: Assets.images.header.image(fit: BoxFit.contain),
        ),
      ),
    );
  }
}
