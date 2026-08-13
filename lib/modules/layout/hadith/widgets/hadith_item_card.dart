import 'package:flutter/material.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/model/hadith_data_model.dart';

import 'hadith_background.dart';
import 'hadith_content_view.dart';

class HadithItemCard extends StatelessWidget {
  final HadithDataModel hadithDataModel;

  const HadithItemCard({super.key, required this.hadithDataModel});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: mediaQuery.height * 0.65,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: Assets.images.hadithBackgroundImg.provider(),
        ),
      ),
      child: Stack(
        children: [
          HadithBackground(),
          HadithContentView(hadithDataModel: hadithDataModel),
        ],
      ),
    );
  }
}
