import 'package:flutter/material.dart';

class CategoryModel {
  String? title;
  IconData? icon;
  Color? color;
  CategoryModel({
    this.title,
    this.icon,
    this.color,
  });
}

List<CategoryModel> listCategoryIcon = [
  CategoryModel(
      title: 'Wallet', icon: Icons.currency_bitcoin, color: Colors.yellow),
  CategoryModel(title: 'Partner', icon: Icons.person_2, color: Colors.blue),
  CategoryModel(title: 'Contact', icon: Icons.support_agent, color: Colors.red),
  CategoryModel(title: 'Rate', icon: Icons.how_to_vote, color: Colors.black),
  CategoryModel(title: 'Favorite', icon: Icons.favorite, color: Colors.red)
];
