import 'package:flutter/material.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';
import 'package:islamic_app/core/theme/app_colors.dart';

class HadithBackground extends StatelessWidget {
  const HadithBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Assets.images.leftCornerImg.image(
                width: 90,
                height: 90,
                color: AppColors.black,
              ),
              Assets.images.rightCornerImg.image(
                width: 90,
                height: 90,
                color: AppColors.black,
              ),
            ],
          ),
        ),
        Spacer(),
        Assets.images.bottomDecorationImg.image(color: AppColors.black),
      ],
    );
  }
}
