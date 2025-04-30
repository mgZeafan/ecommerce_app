import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onAdddToCart;
  ShoeTile({super.key,required this.shoe,required this.onAdddToCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      width: 280,
      height: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: 
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              width: 280,
              height: 220,
              child: Image.asset(
              
                shoe.imagePath,
              
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              shoe.description,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ),
            ],
          ),
         
          Container(
        
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                       child: Text(
                                         shoe.name,
                                         style: TextStyle(
                                           fontSize: 18,
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                     ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(shoe.price,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    )),
                ),
                  ],
                )
             ,
             GestureDetector(
               onTap: onAdddToCart,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.grey[900],
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(12),
                     bottomRight: Radius.circular(12),
                   ),
                 ),
                 width: 50,
                 height: 50,
                 child:  Icon(Icons.add, color: Colors.white,),
                 ),
               ),
            
              
              ],
              
            ),
          )
         
        ]
      )
    );
  }
}
