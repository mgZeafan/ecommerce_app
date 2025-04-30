import 'package:ecommerce_app/components/shoe_tile.dart';
import 'package:ecommerce_app/models/card.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  final ScrollController scrollController;

  const ShopPage({super.key, required this.scrollController});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin
    return Consumer<CardUser>(
      builder:
          (context, cardUser, child) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search', style: TextStyle(color: Colors.grey[500])),
                    Icon(Icons.search, color: Colors.grey[500]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  'every flies.. some fly longer than others',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Hot Picks',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('See All', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller:
                      widget
                          .scrollController, // Use the provided scroll controller
                  itemBuilder: (context, index) {
                    Shoe shoe = cardUser.getShoes()[index];
                    return ShoeTile(shoe: shoe,
                      onAdddToCart: () => addShoeToCard(shoe)
                      ,
                    );
                  },
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                ),
              ),
            ],
          ),
    );
  }

  void addShoeToCard(Shoe sho) {
    Provider.of<CardUser>(context, listen: false).addShoeCard(sho);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Added to Cart'),
          content: const Text('Shoe has been added to your cart.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
