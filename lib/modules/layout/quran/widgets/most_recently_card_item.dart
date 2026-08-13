import 'package:flutter/material.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/model/sura_data_model.dart';

class MostRecentlyCardItem extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const MostRecentlyCardItem({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(suraDataModel.suraNameEN, style: textTheme.headlineSmall),
              Text(suraDataModel.suraNameAR, style: textTheme.headlineSmall),
              Text(
                '${suraDataModel.versesCount} Verses',
                style: textTheme.bodyMedium,
              ),
            ],
          ),
          Assets.images.mostRecentImg.image(),
        ],
      ),
    );
  }
}
