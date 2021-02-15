import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryID;
  // final String categoryTitle;
  // CategoryMealsScreen({this.categoryID, this.categoryTitle});
  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routArgs['id'];
    final categoryTitle = routArgs['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: Center(
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Card(child: Text(categoryMeals[index].title));
            },
            itemCount: categoryMeals.length,
          ),
        ));
  }
}
