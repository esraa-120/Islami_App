import 'package:flutter/material.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/modules/layout/radio/widgets/radio_card.dart';

class RadioList extends StatelessWidget {
  const RadioList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      children: [
        RadioCard(
          title: 'Radio Ibrahim Al-Akdar',
          background: Assets.images.backgroundCardRadioPaused.image(
            fit: BoxFit.cover,
          ),
          playIcon: const Icon(
            Icons.play_arrow,
            size: 40,
            color: AppColors.black,
          ),
          volumeIcon: const Icon(
            Icons.volume_up,
            size: 30,
            color: AppColors.black,
          ),
        ),

        const SizedBox(height: 16),

        RadioCard(
          title: 'Radio Al-Qaria Yassen',
          background: Assets.images.backgroundCardRadioOpened.image(
            fit: BoxFit.cover,
          ),
          playIcon: const Icon(Icons.pause, size: 40, color: AppColors.black),
          volumeIcon: const Icon(
            Icons.volume_off,
            size: 30,
            color: AppColors.black,
          ),
        ),

        const SizedBox(height: 16),

        RadioCard(
          title: 'Radio Ahmed Al-Akdar',
          background: Assets.images.backgroundCardRadioPaused.image(
            fit: BoxFit.cover,
          ),
          playIcon: const Icon(
            Icons.play_arrow,
            size: 40,
            color: AppColors.black,
          ),
          volumeIcon: const Icon(
            Icons.volume_up,
            size: 30,
            color: AppColors.black,
          ),
        ),

        const SizedBox(height: 16),

        RadioCard(
          title: 'Radio Addokali Mohammad Alalim',
          background: Assets.images.backgroundCardRadioPaused.image(
            fit: BoxFit.cover,
          ),
          playIcon: const Icon(
            Icons.play_arrow,
            size: 40,
            color: AppColors.black,
          ),
          volumeIcon: const Icon(
            Icons.volume_up,
            size: 30,
            color: AppColors.black,
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
