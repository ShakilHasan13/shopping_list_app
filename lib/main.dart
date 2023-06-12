import 'package:flutter/material.dart';

void main() {
  runApp(const MyShoppingListApp());
}

class MyShoppingListApp extends StatelessWidget {
  const MyShoppingListApp({super.key});

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Shopping List'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                showSnackbar(context, 'Cart is empty');
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Mango'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Lichi'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Watermelon'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Papaya'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Jack-fruit'),
            ),

          ],
        ),
      ),
    );
  }


}
