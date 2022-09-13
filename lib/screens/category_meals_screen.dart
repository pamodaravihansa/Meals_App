import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class CategoryMeals extends StatefulWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMeals(this.categoryId, this.categoryTitle);

  static const routeName = '/categorymeals';

  @override
  State<CategoryMeals> createState() => _CategoryMealsState();
}

class _CategoryMealsState extends State<CategoryMeals> {
  String categoryTitle;
  List<Meal> displayedMeals;

  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      final categoryId = routeArgs['id'];
      categoryTitle = routeArgs['title'];

      displayedMeals = DUMMY_MEALS
          .where((meal) => meal.categories.contains(categoryId))
          .toList();

      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => MealItem(
            removeItem: _removeMeal,
            id: displayedMeals[index].id,
            title: displayedMeals[index].title,
            imageUrl: displayedMeals[index].imageUrl,
            duration: displayedMeals[index].duration,
            complexity: displayedMeals[index].complexity,
            affordability: displayedMeals[index].affordability),
        itemCount: displayedMeals.length,
      ),
    );
  }
}
