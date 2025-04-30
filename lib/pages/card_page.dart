import 'package:ecommerce_app/components/card_item.dart';
import 'package:ecommerce_app/models/card.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CardUser>(
      builder:
          (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Cart',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getUserShoes().length,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: ( context,  index) {
                      Shoe shoe = Provider.of<CardUser>(context, listen: false)
                          .getUserShoes()[index];
                      return CardItem(shoe: shoe,
                        removeCardItem: () {
                          Provider.of<CardUser>(context, listen: false)
                              .removeShoeCard(shoe);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
