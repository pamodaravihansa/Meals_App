import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMeals(this.categoryId, this.categoryTitle);

  

  @override
  Widget build(BuildContext context) {
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
