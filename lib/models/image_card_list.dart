import 'package:flutter/material.dart';
import 'package:news_app/widgets/card_info.dart';
import 'package:news_app/widgets/image_card.dart';

class ImageCardList extends StatelessWidget {
  const ImageCardList({super.key});

  final List<CardInfo> cardsInfo = const [
    CardInfo(title: "Business", imagePath: "assets/business.avif"),
    CardInfo(title: "Entertainment", imagePath: "assets/entertaiment.avif"),
    CardInfo(title: "General", imagePath: "assets/general.avif"),
    CardInfo(title: "Health", imagePath: "assets/health.avif"),
    CardInfo(title: "Science", imagePath: "assets/science.avif"),
    CardInfo(title: "Sports", imagePath: "assets/sports.avif"),
    CardInfo(title: "Technology", imagePath: "assets/technology.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cardsInfo.length,
        itemBuilder: (context, index) {
          return ImageCard(cardInfo: cardsInfo[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 15),
      ),
    );
  }
}
