import 'package:flutter/material.dart';
import 'package:news_app/widgets/card_info.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    required this.cardInfo,
    super.key,
  });

  final CardInfo cardInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(cardInfo.imagePath),
          fit: BoxFit.fill,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        cardInfo.title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    );
  }
}
