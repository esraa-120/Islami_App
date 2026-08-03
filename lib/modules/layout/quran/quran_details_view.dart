import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/model/sura_data_model.dart';
import 'package:islamic_app/modules/layout/quran/widgets/quran_details_background.dart';

class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final SuraDataModel suraDataModel =
        ModalRoute.of(context)?.settings.arguments as SuraDataModel;

    if (verses.isEmpty) readDataFromFile(suraDataModel.suraNumber);

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(suraDataModel.suraNameEN)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Stack(
          children: [
            QuranDetailsBackground(suraDataModel: suraDataModel),
            Padding(
              padding: const EdgeInsetsGeometry.only(top: 70, bottom: 50),
              child: ListView.builder(
                itemCount: verses.length,
                itemBuilder: (context, index) {
                  return Text(
                    "{${index + 1}} ${verses[index]}",
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge?.copyWith(
                      color: AppColors.primary,
                      height: 1.6,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> verses = [];

  // read data from file
  Future<void> readDataFromFile(int suraNumber) async {
    String content = await rootBundle.loadString(
      "assets/files/quran/$suraNumber.txt",
    );
    verses = content.split("\n");
    setState(() {});
    log(content);
  }
}
