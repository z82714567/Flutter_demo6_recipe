import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName; // 한 번 값이 들어가면 변경할 수 없는 상수값
  final String title;

  // dart에서는 오버로딩이 없다. required 반드시 값 지정
  const RecipeListItem(
      {required this.imageName, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
