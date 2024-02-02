import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    if (meals.isEmpty) {
      return const Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "No meals found for this category!",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Try something else!",
            style: TextStyle(color: Colors.white),
          ),
        ])),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) => Text(
                meals[index].title,
                style: const TextStyle(color: Colors.white),
              )),
    );
  }
}
