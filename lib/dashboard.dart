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

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<String> items = [
    'Anti Gagal, Tips Mudah Membuat Nail Art Sendiri di Rumah',
    'Tips Menjaga Makeup Tahan Lama Seharian',
    'Tips dan Cara Mewarnai Rambut Sendiri di Rumah',
    'Cara Membuat Masker Wajah dari Beras',
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
  }

  void filterSearchResults(String query) {
    List<String> searchResults = [];
    searchResults.addAll(items);

    if (query.isNotEmpty) {
      searchResults = searchResults
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      filteredItems = searchResults;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lunar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                decoration: InputDecoration(
                  labelText: 'Cari',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: filteredItems
                    .map((description) => CardColumn(
                  imageUrl:
                  'https://i.pinimg.com/564x/01/19/23/011923be40611f4ff282f5abfc88114c.jpg',
                  description: description,
                ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardColumn extends StatelessWidget {
  final String imageUrl;
  final String description;

  CardColumn({
    required this.imageUrl,
    required this.description,
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
            Image.network(
              imageUrl,
              height: 200.0,
              width: 350.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
