import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigations/Cartview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Item> products = [
    Item(
        name: 'Heels',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/07/25/13/52/woman-1540543_640.jpg',
        price: 55.0),
    Item(
        name: 'Handbags',
        imageUrl:
            'https://cdn.pixabay.com/photo/2017/10/11/21/03/red-2842438_1280.jpg',
        price: 95.0),
    Item(
        name: 'Wrist Watch',
        imageUrl:
            'https://cdn.pixabay.com/photo/2017/03/20/15/13/wrist-watch-2159351_640.jpg',
        price: 45.0),
    Item(
        name: 'Perfume',
        imageUrl:
            'https://cdn.pixabay.com/photo/2017/03/14/11/36/perfume-2142792_960_720.jpg',
        price: 50.0),
    Item(
        name: 'Jordans',
        imageUrl:
            'https://cdn.pixabay.com/photo/2021/02/03/21/17/sneakers-5979353_640.jpg',
        price: 35.0),
    Item(
        name: 'Jacket',
        imageUrl:
            'https://cdn.pixabay.com/photo/2017/09/07/04/54/khaki-2723896_640.jpg',
        price: 65.0),
    Item(
        name: 'Nike',
        imageUrl:
            'https://cdn.pixabay.com/photo/2019/01/26/22/48/nike-3957127_1280.jpg',
        price: 45.0),
    Item(
        name: 'Bracelet',
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/03/09/10/03/jewelry-665330_640.jpg',
        price: 25.0),
  ];

  List<Item> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.68,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Card(
              margin: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                      products[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      products[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('\$${products[index].price}'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          addToCart(products[index]);
                        },
                        icon: const Icon(Icons.add_shopping_cart),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void addToCart(Item product) {
    setState(() {
      items.add(product);
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartView(
          items: items,
          onDelete: (index) {
            setState(() {
              items.removeAt(index);
            });
          },
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final String imageUrl;
  final double price;

  Item({required this.name, required this.imageUrl, required this.price});
}
