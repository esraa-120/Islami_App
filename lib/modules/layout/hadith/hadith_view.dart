import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/model/hadith_data_model.dart';
import 'package:islamic_app/modules/layout/hadith/widgets/hadith_item_card.dart';

import '../../../core/gen/assets.gen.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {

  @override
  void initState() {
    super.initState();
    _loadHadithData();
  }
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery
        .of(context)
        .size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.hadithBg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
          children: [
            Assets.images.header.image(),
            CarouselSlider(
                items: _hadithDataList.map((hadithDataModel) =>
                    HadithItemCard(hadithDataModel: hadithDataModel)).toList(),
                options: CarouselOptions(
                  height: mediaQuery.height * 0.65,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )
            )
          ]
      ),
    );
  }

  List<HadithDataModel> _hadithDataList = [];

  void _loadHadithData() async {
    for (int i = 1; i <= 50; i++) {
      final content = await rootBundle.loadString(
          "assets/files/hadith/h$i.txt");

      final int titleLength = content.indexOf("\n");
      final String hadithTitle = content.substring(0, titleLength);
      final String hadithContent = content.substring(titleLength + 1);

      final HadithDataModel hadithDataModel = HadithDataModel(
          hadithContent: hadithContent,
          hadithTitle: hadithTitle
      );
      _hadithDataList.add(hadithDataModel);
    }
    log(_hadithDataList.length.toString());
    setState(() {});
  }
}
