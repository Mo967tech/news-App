import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_info.dart';

class NewsColumnInfo extends StatelessWidget {
  const NewsColumnInfo({
    required this.newsInfo,
    super.key,
  });

  final NewsInfo newsInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(image: AssetImage(newsInfo.imagePath)),
          ),
          const SizedBox(height: 15),
          Text(
            newsInfo.txt1,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black87,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 5),
          Text(
            newsInfo.txt2,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
