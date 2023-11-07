import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/buttons/category_button.dart';
import 'package:pocket/models/category_model.dart';

class CategoryContainer extends StatelessWidget {
  final List<CategoryModel> categoryButtons;

const CategoryContainer({ Key? key, required this.categoryButtons }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            children: [
              ...categoryButtons.map((e) => Expanded(child: CategoryButton(categoryText: e.name, categoryImage: e.image)))
            ],
          ),
        ],
      ),
    );
  }
}