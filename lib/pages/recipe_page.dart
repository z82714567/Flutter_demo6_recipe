import 'package:class_demo6_recipe/components/recipe_list_item.dart';
import 'package:class_demo6_recipe/components/recipe_menu.dart';
import 'package:class_demo6_recipe/components/recipe_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 1. 페이지 기본 코딩
class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // 스크롤위젯
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem(imageName: "coffee", title: "Make Coffee"),
            RecipeListItem(imageName: "burger", title: "Make burger"),
            RecipeListItem(imageName: "pizza", title: "Make pizza"),
          ],
        ),
      ),
    );
  }
}

// 전역 함수 생성
AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0, // 그림자 효과 조정
    actions: [
      Icon(CupertinoIcons.search, color: Colors.black),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart, color: Colors.redAccent),
      SizedBox(width: 15),
    ],
  );
} // end of AppBar
