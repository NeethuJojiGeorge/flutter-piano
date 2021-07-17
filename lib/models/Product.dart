import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;

  final bool isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,

    this.isPopular = false,
    @required this.title,

    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/notes.png",
      "assets/images/notes.png",
      "assets/images/notes.png",
      "assets/images/notes.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Rains Of Castamere",

    description: description,

    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/notes.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Light of The Seven",

    description: description,

    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/notes.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "The Iron Throne",

    description: description,

    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/notes.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wonder",

    description: description,

  ),
];

const String description =
    "Song 1";
