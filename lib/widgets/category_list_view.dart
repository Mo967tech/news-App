import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: "assets/business.jfif",
      categoryName: "Business",
    ),
    CategoryModel(
      image: "assets/general.jfif",
      categoryName: "General",
    ),
    CategoryModel(
      image: "assets/entertaiment.avif",
      categoryName: "Entertainment",
    ),
    CategoryModel(
      image: "assets/health.avif",
      categoryName: "Health",
    ),
    CategoryModel(
      image: "assets/science.avif",
      categoryName: "Science",
    ),
    CategoryModel(
      image: "assets/technology.jpeg",
      categoryName: "Technology",
    ),
    CategoryModel(
      image: "assets/sports.jfif",
      categoryName: "Sports",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 15);
        },
        itemCount: categories.length,
      ),
    );
  }
}
