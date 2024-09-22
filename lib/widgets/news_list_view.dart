import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

//because bad performance I removed this widget
// ListView.builder(
//   physics: const NeverScrollableScrollPhysics(),
//   shrinkWrap: true,
//   itemCount: 5,
//   itemBuilder: (context, index) {
//     return const Padding(
//       padding: EdgeInsets.only(bottom: 8.0),
//       child: NewsTile(),
//     );
//   },
// );

class NewsListView extends StatelessWidget {
  const NewsListView({
    required this.articles,
    super.key,
  });

  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: NewsTile(articleModel: articles[index]),
        ),
      ),
    );
  }
}
