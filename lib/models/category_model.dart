import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryModel {
  String name; 
  SvgPicture image;
  CategoryModel(this.name, String imagePath) : 
  image = SvgPicture.asset('assets/images/categories/${imagePath}.svg',);
}