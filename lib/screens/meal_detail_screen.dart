import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({Key key}) : super(key: key);
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is meal!'),
    );
  }
}
