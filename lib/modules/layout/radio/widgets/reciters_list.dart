import 'package:flutter/material.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/modules/layout/radio/widgets/reciters_card.dart';

class RecitersList extends StatelessWidget {
  const RecitersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      children: [
        RecitersCard(
          title: "Ibrahim Al-Akdar ",
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

        RecitersCard(
          title: "Akram Alalaqmi",
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

        RecitersCard(
          title: "Majed Al-Enezi",
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

        RecitersCard(
          title: "Malik shaibat Alhamed",
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
