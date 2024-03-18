import 'package:flutter/material.dart';

class ProductItem {
  final String imageUrl;
  final String title;
  final String description;
  final String price;

  ProductItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  });
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<ProductItem> _buildProductItems = [
    ProductItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/08/17/08/20/online-shopping-2650383_960_720.jpg',
      title: 'Hand Bag ',
      description: 'Black Tote Bag IDB-AW23-99',
      price: '\$45',
    ),
    ProductItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/03/14/11/41/perfume-2142824_960_720.jpg',
      title: 'Perfume',
      description:
          'Long Lasting Artisan Perfume With Notes Of Papaya, Peach, And Coconut scent',
      price: '\$25',
    ),
    ProductItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/11/29/13/39/analog-watch-1869928_1280.jpg',
      title: 'Watch',
      description: ' A classic, easy-to-read timepiece for everyday wear',
      price: '\$57',
    ),
    ProductItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/10/16/14/28/style-2857387_960_720.jpg',
      title: 'Sandals',
      description:
          ' Block high heel sandals are easy and comfortable to walk in, ',
      price: '\$40',
    ),
    ProductItem(
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/08/05/09/55/mens-shoes-875950_1280.jpg',
      title: 'Shoes',
      description: ' These loafer flats take you from day to night ',
      price: '\$35',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        padding: const EdgeInsets.all(8.0),
        itemCount: _buildProductItems.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  _buildProductItems[index].imageUrl,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Text(
                  _buildProductItems[index].title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  _buildProductItems[index].description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  _buildProductItems[index].price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
