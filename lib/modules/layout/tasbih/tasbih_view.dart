import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamic_app/core/theme/app_colors.dart';

import '../../../core/gen/assets.gen.dart';

class TasbihView extends StatefulWidget {
  const TasbihView({super.key});

  @override
  State<TasbihView> createState() => _TasbihViewState();
}

class _TasbihViewState extends State<TasbihView> {

  List<String> tasbihList = ["الحمد لله", "سبحان الله", "الله اكبر"];
  int counter = 0;
  late String tasbehTitle = tasbihList[0];
  double turns = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.sebhaBg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
          children: [
            Assets.images.header.image(
              width: size.width * 0.8,
              height: size.height * 0.25,
            ),

            Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: AppColors.light,
              ),
            ),

            SizedBox(height: 16,),

            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Row(),
                  Assets.images.sebhaHeadImg.image(
                    height: size.height * 0.1,
                  ),
                  Positioned.fill(
                    top: size.height * 0.08,
                    child: Stack(
                      children: [
                        AnimatedRotation(
                          duration: Duration(milliseconds: 200),
                          turns: turns,
                          child: InkWell(
                            onTap: _updateTasbeh,
                            child: Assets.images.sebhaBodyImg.image(
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(),
                            Text(
                              tasbehTitle,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: AppColors.light,
                              ),
                            ),
                            SizedBox(height: 16,),
                            Text(
                              counter.toString(),
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: AppColors.light,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),)
                ],
              ),
            )
          ]
      ),
    );
  }

  int tasbehIndex = 0;

  void _updateTasbeh() {
    setState(() {
      counter++;
      turns = turns + (2 * pi / 33);
      if (counter == 33) {
        tasbehIndex = (tasbehIndex + 1) % tasbihList.length;
        tasbehTitle = tasbihList[tasbehIndex];
        counter = 0;
      }
    });
  }
}
