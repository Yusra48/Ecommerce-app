import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigations/HomeScreen.dart';

class CartView extends StatelessWidget {
  final List<Item> items;
  final Function(int) onDelete;

  const CartView({Key? key, required this.items, required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.767),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.grey,
            title: Text(items[index].name),
            trailing: IconButton(
              onPressed: () {
                onDelete(index);
              },
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
