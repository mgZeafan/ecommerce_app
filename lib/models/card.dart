import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class CardUser extends ChangeNotifier {
   List<Shoe> shoes = [
    Shoe(
      name: 'Nike Air Max',
      price: '\$120',
      imagePath: 'assets/images/001.jpg',
      description: 'Comfortable and stylish sneakers for everyday wear.',
    ),
    Shoe(
      name: 'Adidas Ultraboost',
      price: '\$150',
      imagePath: 'assets/images/002.jpg',
      description: 'High-performance running shoes with great cushioning.',
    ),
    Shoe(
      name: 'Puma RS-X',
      price: '\$110',
      imagePath: 'assets/images/003.jpg',
      description: 'Retro-inspired sneakers with a modern twist.',
    ),
    Shoe(
      name: 'addits RS-X',
      price: '\$110',
      imagePath: 'assets/images/004.jpg',
      description: 'Retro-inspired sneakers with a modern twist.',
    ),
    Shoe(
      name: 'nika RS-X',
      price: '\$110',
      imagePath: 'assets/images/005.jpg',
      description: 'Retro-inspired sneakers with a modern twist.',
    ),
    Shoe(
      name: 'Gdfh RS-X',
      price: '\$110',
      imagePath: 'assets/images/006.jpg',
      description: 'Retro-inspired sneakers with a modern twist.',
    ),
  ];
  List<Shoe> userShoes = [];
  List<Shoe> getUserShoes() {
    return userShoes;
  }

   List<Shoe> getShoes() {
    return shoes;
  }

  void addShoeCard(Shoe shoe) {
    userShoes.add(shoe);
    notifyListeners();
  }

  void removeShoeCard(Shoe shoe) {
    userShoes.remove(shoe);
    notifyListeners();
  }
}
