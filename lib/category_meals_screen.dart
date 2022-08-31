import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipies'),
      ),
      body: Center(
        child: Text('The receipies for the category!'),
      ),
    );
  }
}
