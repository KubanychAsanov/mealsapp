import 'package:flutter/material.dart';
import 'package:mealsapp/Category_item.dart';
import 'package:mealsapp/dummy_cotegories.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_COTEGORIES.map((catData) {
        return CategoryItem(
          title: catData.title,
          color: catData.color,
        );
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
