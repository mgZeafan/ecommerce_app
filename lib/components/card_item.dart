import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class CardItem
 extends StatelessWidget {
  final Shoe shoe;
  final void Function()? removeCardItem;
  const CardItem({super.key,required this.shoe,required this.removeCardItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image.asset(
          shoe.imagePath,
          width: 70,
          height:double.infinity,
          fit: BoxFit.contain,
        ),
        
        title: Text(shoe.name),
        subtitle: Text(shoe.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeCardItem,
        ),
      ),
    );
  }
}