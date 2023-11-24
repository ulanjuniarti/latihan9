import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lunar Accessories'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(), // Tambahkan physics di sini
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CardColumn(
                      imageAsset: 'assets/kalung1.jpg',
                      productName: 'Kalung',
                      price: 'Rp 100.000',
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: CardColumn(
                      imageAsset: 'assets/cincin1.jpg',
                      productName: 'Cincin',
                      price: 'Rp 150.000',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: CardColumn(
                      imageAsset: 'assets/gelang1.jpg',
                      productName: 'Gelang',
                      price: 'Rp 120.000',
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: CardColumn(
                      imageAsset: 'assets/anting1.jpg',
                      productName: 'Anting',
                      price: 'Rp 200.000',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: CardColumn(
                      imageAsset: 'assets/jepit2.jpg',
                      productName: 'Jepit',
                      price: 'Rp 80.000',
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: CardColumn(
                      imageAsset: 'assets/scrunchy1.jpg',
                      productName: 'Scrunchy',
                      price: 'Rp 180.000',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardColumn extends StatelessWidget {
  final String imageAsset;
  final String productName;
  final String price;

  CardColumn({
    required this.imageAsset,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 150.0,
              width: 150.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              productName,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              price,
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
