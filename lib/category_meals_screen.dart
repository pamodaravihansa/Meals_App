import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMeals(this.categoryId, this.categoryTitle);

  static const routeName = '/categorymeals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('The receipies for the category!'),
      ),
    );
  }
}
