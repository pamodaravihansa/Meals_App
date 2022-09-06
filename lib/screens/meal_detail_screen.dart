import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({Key key}) : super(key: key);
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: Center(
        child: Text('This is meal! - $mealId'),
      ),
    );
  }
}
