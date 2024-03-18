import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({Key? key}) : super(key: key);

  static const List<PopularItem> _popularItems = [
    PopularItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/05/30/08/28/purse-2356157_640.jpg',
      title: 'Hand Bag',
      description:
          'Handbags for Girls, Women, Ladies, Tote Bag, Purse and Shoulder Bag',
      price: '\$45',
    ),
    PopularItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/06/09/15/40/bottle-2387210_1280.jpg',
      title: 'Perfume',
      description: 'Coach Dreams Sunset Eau De Parfum, For Women, 90ml',
      price: '\$85',
    ),
    PopularItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2021/10/11/18/56/shoes-6701631_1280.jpg',
      title: 'Heels',
      description:
          'Picktoes Trendy Block High Heels Sandals For girls and women',
      price: '\$45',
    ),
    PopularItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/07/31/23/00/wristwatch-407096_1280.jpg',
      title: 'Wrist Watch',
      description:
          'Wrist Watches for Men Leather Strap Analog Watch 30M Waterproof',
      price: '\$45',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _popularItems.map((item) => _buildPopularItem(item)).toList(),
    );
  }

  Widget _buildPopularItem(PopularItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: 430,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 90,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  item.description,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  item.price,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopularItem {
  final String imageUrl;
  final String title;
  final String description;
  final String price;

  const PopularItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  });
}
