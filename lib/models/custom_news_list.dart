import 'package:flutter/material.dart';
import 'package:news_app/models/image_card_list.dart';
import 'package:news_app/widgets/news_column_card.dart';
import 'package:news_app/widgets/news_info.dart';

class CustomNewsList extends StatelessWidget {
  const CustomNewsList({
    super.key,
  });

  final List<NewsInfo> newsInfo = const [
    NewsInfo(
      imagePath: "assets/business.avif",
      txt1: "anything",
      txt2: "anything",
    ),
    NewsInfo(
      imagePath: "assets/business.avif",
      txt1: "anything",
      txt2: "anything",
    ),
    NewsInfo(
      imagePath: "assets/business.avif",
      txt1: "anything",
      txt2: "anything",
    ),
    NewsInfo(
      imagePath: "assets/business.avif",
      txt1: "anything",
      txt2: "anything",
    ),
    NewsInfo(
      imagePath: "assets/business.avif",
      txt1: "anything",
      txt2: "anything",
    ),
    NewsInfo(
      imagePath: "assets/business.avif",
      txt1: "anything",
      txt2: "anything",
    ),
    NewsInfo(
      imagePath: "assets/business.avif",
      txt1: "anything",
      txt2: "anything",
    ),
    NewsInfo(
      imagePath: "assets/business.avif",
      txt1: "anything",
      txt2: "anything",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: ImageCardList()),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: newsInfo.length,
              (context, index) {
                return NewsColumnInfo(newsInfo: newsInfo[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
