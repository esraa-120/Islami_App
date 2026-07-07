import 'package:flutter/material.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';
import 'package:islamic_app/model/sura_data_model.dart';

class SuraItem extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const SuraItem({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.surNumberFrameImg.provider(),
            ),
          ),
          child: Text(
            suraDataModel.suraNumber.toString(),
            style: textTheme.bodyMedium?.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(width: 25),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              suraDataModel.suraNameEN,
              style: textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
            Text(
              "{${suraDataModel.versesCount}} Verses",
              style: textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
          ],
        ),
        Spacer(),
        Text(
          suraDataModel.suraNameAR,
          style: textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
