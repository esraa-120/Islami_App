import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_routes/app_routes_name.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/model/sura_data_model.dart';
import 'package:islamic_app/modules/layout/quran/widgets/sura_item.dart';

import '../../../core/gen/assets.gen.dart';


///Git & Github
///versioned vs unversioned

final List<SuraDataModel> quranSuras = [
  SuraDataModel(
    suraNameEN: "Al-Fatiha",
    suraNameAR: "الفاتحة",
    versesCount: 7,
    suraNumber: 1,
  ),
  SuraDataModel(
    suraNameEN: "Al-Baqarah",
    suraNameAR: "البقرة",
    versesCount: 286,
    suraNumber: 2,
  ),
  SuraDataModel(
    suraNameEN: "Aal-E-Imran",
    suraNameAR: "آل عمران",
    versesCount: 200,
    suraNumber: 3,
  ),
  SuraDataModel(
    suraNameEN: "An-Nisa'",
    suraNameAR: "النساء",
    versesCount: 176,
    suraNumber: 4,
  ),
  SuraDataModel(
    suraNameEN: "Al-Ma'idah",
    suraNameAR: "المائدة",
    versesCount: 120,
    suraNumber: 5,
  ),
  SuraDataModel(
    suraNameEN: "Al-An'am",
    suraNameAR: "الأنعام",
    versesCount: 165,
    suraNumber: 6,
  ),
  SuraDataModel(
    suraNameEN: "Al-A'raf",
    suraNameAR: "الأعراف",
    versesCount: 206,
    suraNumber: 7,
  ),
  SuraDataModel(
    suraNameEN: "Al-Anfal",
    suraNameAR: "الأنفال",
    versesCount: 75,
    suraNumber: 8,
  ),
  SuraDataModel(
    suraNameEN: "At-Tawbah",
    suraNameAR: "التوبة",
    versesCount: 129,
    suraNumber: 9,
  ),
  SuraDataModel(
    suraNameEN: "Yunus",
    suraNameAR: "يونس",
    versesCount: 109,
    suraNumber: 10,
  ),
  SuraDataModel(
    suraNameEN: "Hud",
    suraNameAR: "هود",
    versesCount: 123,
    suraNumber: 11,
  ),
  SuraDataModel(
    suraNameEN: "Yusuf",
    suraNameAR: "يوسف",
    versesCount: 111,
    suraNumber: 12,
  ),
  SuraDataModel(
    suraNameEN: "Ar-Ra'd",
    suraNameAR: "الرعد",
    versesCount: 43,
    suraNumber: 13,
  ),
  SuraDataModel(
    suraNameEN: "Ibrahim",
    suraNameAR: "إبراهيم",
    versesCount: 52,
    suraNumber: 14,
  ),
  SuraDataModel(
    suraNameEN: "Al-Hijr",
    suraNameAR: "الحجر",
    versesCount: 99,
    suraNumber: 15,
  ),
  SuraDataModel(
    suraNameEN: "An-Nahl",
    suraNameAR: "النحل",
    versesCount: 128,
    suraNumber: 16,
  ),
  SuraDataModel(
    suraNameEN: "Al-Isra",
    suraNameAR: "الإسراء",
    versesCount: 111,
    suraNumber: 17,
  ),
  SuraDataModel(
    suraNameEN: "Al-Kahf",
    suraNameAR: "الكهف",
    versesCount: 110,
    suraNumber: 18,
  ),
  SuraDataModel(
    suraNameEN: "Maryam",
    suraNameAR: "مريم",
    versesCount: 98,
    suraNumber: 19,
  ),
  SuraDataModel(
    suraNameEN: "Ta-Ha",
    suraNameAR: "طه",
    versesCount: 135,
    suraNumber: 20,
  ),
  SuraDataModel(
    suraNameEN: "Al-Anbiya",
    suraNameAR: "الأنبياء",
    versesCount: 112,
    suraNumber: 21,
  ),
  SuraDataModel(
    suraNameEN: "Al-Hajj",
    suraNameAR: "الحج",
    versesCount: 78,
    suraNumber: 22,
  ),
  SuraDataModel(
    suraNameEN: "Al-Mu'minun",
    suraNameAR: "المؤمنون",
    versesCount: 118,
    suraNumber: 23,
  ),
  SuraDataModel(
    suraNameEN: "An-Nur",
    suraNameAR: "النور",
    versesCount: 64,
    suraNumber: 24,
  ),
  SuraDataModel(
    suraNameEN: "Al-Furqan",
    suraNameAR: "الفرقان",
    versesCount: 77,
    suraNumber: 25,
  ),
  SuraDataModel(
    suraNameEN: "Ash-Shu'ara",
    suraNameAR: "الشعراء",
    versesCount: 227,
    suraNumber: 26,
  ),
  SuraDataModel(
    suraNameEN: "An-Naml",
    suraNameAR: "النمل",
    versesCount: 93,
    suraNumber: 27,
  ),
  SuraDataModel(
    suraNameEN: "Al-Qasas",
    suraNameAR: "القصص",
    versesCount: 88,
    suraNumber: 28,
  ),
  SuraDataModel(
    suraNameEN: "Al-Ankabut",
    suraNameAR: "العنكبوت",
    versesCount: 69,
    suraNumber: 29,
  ),
  SuraDataModel(
    suraNameEN: "Ar-Rum",
    suraNameAR: "الروم",
    versesCount: 60,
    suraNumber: 30,
  ),
  SuraDataModel(
    suraNameEN: "Luqman",
    suraNameAR: "لقمان",
    versesCount: 34,
    suraNumber: 31,
  ),
  SuraDataModel(
    suraNameEN: "As-Sajda",
    suraNameAR: "السجدة",
    versesCount: 30,
    suraNumber: 32,
  ),
  SuraDataModel(
    suraNameEN: "Al-Ahzab",
    suraNameAR: "الأحزاب",
    versesCount: 73,
    suraNumber: 33,
  ),
  SuraDataModel(
    suraNameEN: "Saba",
    suraNameAR: "سبأ",
    versesCount: 54,
    suraNumber: 34,
  ),
  SuraDataModel(
    suraNameEN: "Fatir",
    suraNameAR: "فاطر",
    versesCount: 45,
    suraNumber: 35,
  ),
  SuraDataModel(
    suraNameEN: "Ya-Sin",
    suraNameAR: "يس",
    versesCount: 83,
    suraNumber: 36,
  ),
  SuraDataModel(
    suraNameEN: "As-Saffat",
    suraNameAR: "الصافات",
    versesCount: 182,
    suraNumber: 37,
  ),
  SuraDataModel(
    suraNameEN: "Sad",
    suraNameAR: "ص",
    versesCount: 88,
    suraNumber: 38,
  ),
  SuraDataModel(
    suraNameEN: "Az-Zumar",
    suraNameAR: "الزمر",
    versesCount: 75,
    suraNumber: 39,
  ),
  SuraDataModel(
    suraNameEN: "Ghafir",
    suraNameAR: "غافر",
    versesCount: 85,
    suraNumber: 40,
  ),
  SuraDataModel(
    suraNameEN: "Fussilat",
    suraNameAR: "فصلت",
    versesCount: 54,
    suraNumber: 41,
  ),
  SuraDataModel(
    suraNameEN: "Ash-Shura",
    suraNameAR: "الشورى",
    versesCount: 53,
    suraNumber: 42,
  ),
  SuraDataModel(
    suraNameEN: "Az-Zukhruf",
    suraNameAR: "الزخرف",
    versesCount: 89,
    suraNumber: 43,
  ),
  SuraDataModel(
    suraNameEN: "Ad-Dukhan",
    suraNameAR: "الدخان",
    versesCount: 59,
    suraNumber: 44,
  ),
  SuraDataModel(
    suraNameEN: "Al-Jathiya",
    suraNameAR: "الجاثية",
    versesCount: 37,
    suraNumber: 45,
  ),
  SuraDataModel(
    suraNameEN: "Al-Ahqaf",
    suraNameAR: "الأحقاف",
    versesCount: 35,
    suraNumber: 46,
  ),
  SuraDataModel(
    suraNameEN: "Muhammad",
    suraNameAR: "محمد",
    versesCount: 38,
    suraNumber: 47,
  ),
  SuraDataModel(
    suraNameEN: "Al-Fath",
    suraNameAR: "الفتح",
    versesCount: 29,
    suraNumber: 48,
  ),
  SuraDataModel(
    suraNameEN: "Al-Hujurat",
    suraNameAR: "الحجرات",
    versesCount: 18,
    suraNumber: 49,
  ),
  SuraDataModel(
    suraNameEN: "Qaf",
    suraNameAR: "ق",
    versesCount: 45,
    suraNumber: 50,
  ),
  SuraDataModel(
    suraNameEN: "Adh-Dhariyat",
    suraNameAR: "الذاريات",
    versesCount: 60,
    suraNumber: 51,
  ),
  SuraDataModel(
    suraNameEN: "At-Tur",
    suraNameAR: "الطور",
    versesCount: 49,
    suraNumber: 52,
  ),
  SuraDataModel(
    suraNameEN: "An-Najm",
    suraNameAR: "النجم",
    versesCount: 62,
    suraNumber: 53,
  ),
  SuraDataModel(
    suraNameEN: "Al-Qamar",
    suraNameAR: "القمر",
    versesCount: 55,
    suraNumber: 54,
  ),
  SuraDataModel(
    suraNameEN: "Ar-Rahman",
    suraNameAR: "الرحمن",
    versesCount: 78,
    suraNumber: 55,
  ),
  SuraDataModel(
    suraNameEN: "Al-Waqi'a",
    suraNameAR: "الواقعة",
    versesCount: 96,
    suraNumber: 56,
  ),
  SuraDataModel(
    suraNameEN: "Al-Hadid",
    suraNameAR: "الحديد",
    versesCount: 29,
    suraNumber: 57,
  ),
  SuraDataModel(
    suraNameEN: "Al-Mujadila",
    suraNameAR: "المجادلة",
    versesCount: 22,
    suraNumber: 58,
  ),
  SuraDataModel(
    suraNameEN: "Al-Hashr",
    suraNameAR: "الحشر",
    versesCount: 24,
    suraNumber: 59,
  ),
  SuraDataModel(
    suraNameEN: "Al-Mumtahina",
    suraNameAR: "الممتحنة",
    versesCount: 13,
    suraNumber: 60,
  ),
  SuraDataModel(
    suraNameEN: "As-Saff",
    suraNameAR: "الصف",
    versesCount: 14,
    suraNumber: 61,
  ),
  SuraDataModel(
    suraNameEN: "Al-Jumu'a",
    suraNameAR: "الجمعة",
    versesCount: 11,
    suraNumber: 62,
  ),
  SuraDataModel(
    suraNameEN: "Al-Munafiqun",
    suraNameAR: "المنافقون",
    versesCount: 11,
    suraNumber: 63,
  ),
  SuraDataModel(
    suraNameEN: "At-Taghabun",
    suraNameAR: "التغابن",
    versesCount: 18,
    suraNumber: 64,
  ),
  SuraDataModel(
    suraNameEN: "At-Talaq",
    suraNameAR: "الطلاق",
    versesCount: 12,
    suraNumber: 65,
  ),
  SuraDataModel(
    suraNameEN: "At-Tahrim",
    suraNameAR: "التحريم",
    versesCount: 12,
    suraNumber: 66,
  ),
  SuraDataModel(
    suraNameEN: "Al-Mulk",
    suraNameAR: "الملك",
    versesCount: 30,
    suraNumber: 67,
  ),
  SuraDataModel(
    suraNameEN: "Al-Qalam",
    suraNameAR: "القلم",
    versesCount: 52,
    suraNumber: 68,
  ),
  SuraDataModel(
    suraNameEN: "Al-Haqqah",
    suraNameAR: "الحاقة",
    versesCount: 52,
    suraNumber: 69,
  ),
  SuraDataModel(
    suraNameEN: "Al-Ma'arij",
    suraNameAR: "المعارج",
    versesCount: 44,
    suraNumber: 70,
  ),
  SuraDataModel(
    suraNameEN: "Nuh",
    suraNameAR: "نوح",
    versesCount: 28,
    suraNumber: 71,
  ),
  SuraDataModel(
    suraNameEN: "Al-Jinn",
    suraNameAR: "الجن",
    versesCount: 28,
    suraNumber: 72,
  ),
  SuraDataModel(
    suraNameEN: "Al-Muzzammil",
    suraNameAR: "المزمل",
    versesCount: 20,
    suraNumber: 73,
  ),
  SuraDataModel(
    suraNameEN: "Al-Muddathir",
    suraNameAR: "المدثر",
    versesCount: 56,
    suraNumber: 74,
  ),
  SuraDataModel(
    suraNameEN: "Al-Qiyamah",
    suraNameAR: "القيامة",
    versesCount: 40,
    suraNumber: 75,
  ),
  SuraDataModel(
    suraNameEN: "Al-Insan",
    suraNameAR: "الإنسان",
    versesCount: 31,
    suraNumber: 76,
  ),
  SuraDataModel(
    suraNameEN: "Al-Mursalat",
    suraNameAR: "المرسلات",
    versesCount: 50,
    suraNumber: 77,
  ),
  SuraDataModel(
    suraNameEN: "An-Naba'",
    suraNameAR: "النبأ",
    versesCount: 40,
    suraNumber: 78,
  ),
  SuraDataModel(
    suraNameEN: "An-Nazi'at",
    suraNameAR: "النازعات",
    versesCount: 46,
    suraNumber: 79,
  ),
  SuraDataModel(
    suraNameEN: "Abasa",
    suraNameAR: "عبس",
    versesCount: 42,
    suraNumber: 80,
  ),
  SuraDataModel(
    suraNameEN: "At-Takwir",
    suraNameAR: "التكوير",
    versesCount: 29,
    suraNumber: 81,
  ),
  SuraDataModel(
    suraNameEN: "Al-Infitar",
    suraNameAR: "الانفطار",
    versesCount: 19,
    suraNumber: 82,
  ),
  SuraDataModel(
    suraNameEN: "Al-Mutaffifin",
    suraNameAR: "المطففين",
    versesCount: 36,
    suraNumber: 83,
  ),
  SuraDataModel(
    suraNameEN: "Al-Inshiqaq",
    suraNameAR: "الانشقاق",
    versesCount: 25,
    suraNumber: 84,
  ),
  SuraDataModel(
    suraNameEN: "Al-Buruj",
    suraNameAR: "البروج",
    versesCount: 22,
    suraNumber: 85,
  ),
  SuraDataModel(
    suraNameEN: "At-Tariq",
    suraNameAR: "الطارق",
    versesCount: 17,
    suraNumber: 86,
  ),
  SuraDataModel(
    suraNameEN: "Al-A'la",
    suraNameAR: "الأعلى",
    versesCount: 19,
    suraNumber: 87,
  ),
  SuraDataModel(
    suraNameEN: "Al-Ghashiyah",
    suraNameAR: "الغاشية",
    versesCount: 26,
    suraNumber: 88,
  ),
  SuraDataModel(
    suraNameEN: "Al-Fajr",
    suraNameAR: "الفجر",
    versesCount: 30,
    suraNumber: 89,
  ),
  SuraDataModel(
    suraNameEN: "Al-Balad",
    suraNameAR: "البلد",
    versesCount: 20,
    suraNumber: 90,
  ),
  SuraDataModel(
    suraNameEN: "Ash-Shams",
    suraNameAR: "الشمس",
    versesCount: 15,
    suraNumber: 91,
  ),
  SuraDataModel(
    suraNameEN: "Al-Lail",
    suraNameAR: "الليل",
    versesCount: 21,
    suraNumber: 92,
  ),
  SuraDataModel(
    suraNameEN: "Ad-Duha",
    suraNameAR: "الضحى",
    versesCount: 11,
    suraNumber: 93,
  ),
  SuraDataModel(
    suraNameEN: "Ash-Sharh",
    suraNameAR: "الشرح",
    versesCount: 8,
    suraNumber: 94,
  ),
  SuraDataModel(
    suraNameEN: "At-Tin",
    suraNameAR: "التين",
    versesCount: 5,
    suraNumber: 95,
  ),
  SuraDataModel(
    suraNameEN: "Al-Alaq",
    suraNameAR: "العلق",
    versesCount: 19,
    suraNumber: 96,
  ),
  SuraDataModel(
    suraNameEN: "Al-Qadr",
    suraNameAR: "القدر",
    versesCount: 5,
    suraNumber: 97,
  ),
  SuraDataModel(
    suraNameEN: "Al-Bayyina",
    suraNameAR: "البينة",
    versesCount: 8,
    suraNumber: 98,
  ),
  SuraDataModel(
    suraNameEN: "Az-Zalzalah",
    suraNameAR: "الزلزلة",
    versesCount: 8,
    suraNumber: 99,
  ),
  SuraDataModel(
    suraNameEN: "Al-Adiyat",
    suraNameAR: "العاديات",
    versesCount: 11,
    suraNumber: 100,
  ),
  SuraDataModel(
    suraNameEN: "Al-Qari'a",
    suraNameAR: "القارعة",
    versesCount: 11,
    suraNumber: 101,
  ),
  SuraDataModel(
    suraNameEN: "At-Takathur",
    suraNameAR: "التكاثر",
    versesCount: 8,
    suraNumber: 102,
  ),
  SuraDataModel(
    suraNameEN: "Al-Asr",
    suraNameAR: "العصر",
    versesCount: 3,
    suraNumber: 103,
  ),
  SuraDataModel(
    suraNameEN: "Al-Humazah",
    suraNameAR: "الهمزة",
    versesCount: 9,
    suraNumber: 104,
  ),
  SuraDataModel(
    suraNameEN: "Al-Fil",
    suraNameAR: "الفيل",
    versesCount: 5,
    suraNumber: 105,
  ),
  SuraDataModel(
    suraNameEN: "Quraysh",
    suraNameAR: "قريش",
    versesCount: 4,
    suraNumber: 106,
  ),
  SuraDataModel(
    suraNameEN: "Al-Ma'un",
    suraNameAR: "الماعون",
    versesCount: 6,
    suraNumber: 107,
  ),
  SuraDataModel(
    suraNameEN: "Al-Kawthar",
    suraNameAR: "الكوثر",
    versesCount: 3,
    suraNumber: 108,
  ),
  SuraDataModel(
    suraNameEN: "Al-Kafirun",
    suraNameAR: "الكافرون",
    versesCount: 6,
    suraNumber: 109,
  ),
  SuraDataModel(
    suraNameEN: "An-Nasr",
    suraNameAR: "النصر",
    versesCount: 3,
    suraNumber: 110,
  ),
  SuraDataModel(
    suraNameEN: "Al-Masad",
    suraNameAR: "المسد",
    versesCount: 5,
    suraNumber: 111,
  ),
  SuraDataModel(
    suraNameEN: "Al-Ikhlas",
    suraNameAR: "الإخلاص",
    versesCount: 4,
    suraNumber: 112,
  ),
  SuraDataModel(
    suraNameEN: "Al-Falaq",
    suraNameAR: "الفلق",
    versesCount: 5,
    suraNumber: 113,
  ),
  SuraDataModel(
    suraNameEN: "An-Nas",
    suraNameAR: "الناس",
    versesCount: 6,
    suraNumber: 114,
  ),
];

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.quranBg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Assets.images.header.image(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: AppColors.textSecondary,
                  decoration: InputDecoration(
                    hintText: "Sura Name",
                    hintStyle: textTheme.bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.textSecondary),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.textSecondary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.textSecondary),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Assets.icons.quranSvg.svg(
                        colorFilter: ColorFilter.mode(
                          AppColors.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Most Recently",
                  textAlign: TextAlign.start,
                  style: textTheme.bodyLarge,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
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
                              Text(
                                "Al-Anbiya",
                                style: textTheme.headlineSmall,
                              ),
                              Text(
                                "الأنبياء",
                                style: textTheme.headlineSmall,
                              ),
                              Text(
                                "112 Verses  ",
                                style: textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          Assets.images.mostRecentImg.image(),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10,);
                  },
                  itemCount: 4,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Sura List",
                  textAlign: TextAlign.start,
                  style: textTheme.bodyLarge,
                ),
              ),

              ///CustomScrollView
              ///Slivers
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemBuilder: (context, index) {
                  return SuraItem(suraDataModel: quranSuras[index], onTap: () {
                    Navigator.pushNamed(context, AppRoutesName.quranDetails,
                        arguments: quranSuras[index]
                    );
                  },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(indent: 40, endIndent: 40,);
                },
                itemCount: quranSuras.length,
              ),
            ]
        ),
      ),
    );
  }
}
