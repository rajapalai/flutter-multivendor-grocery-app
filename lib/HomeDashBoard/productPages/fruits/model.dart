import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String imagePath;
  final double price;
  final double price1;
  final String description;
  final String name;
  final String content;
  final String productType;

  ProductModel({
    this.id,
    this.imagePath,
    this.price,
    this.content,
    this.price1,
    this.description,
    this.name,
    this.productType,
  });
}
