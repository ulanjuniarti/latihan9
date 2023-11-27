import 'package:flutter/material.dart';
import 'nailart.dart';
import 'makeup.dart';
import 'rambut.dart';

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
        title: Text('Lunar Beauty'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final result = await showSearch(
                        context: context,
                        delegate: CustomSearchDelegate(),
                      );

                      // Handle the search result if needed
                      if (result != null) {
                        // Handle the result (e.g., navigate to a specific page)
                      }
                    },
                    icon: Icon(Icons.search),
                    label: Text('Search'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  CardColumn(
                    imageUrl: 'https://i.pinimg.com/564x/01/19/23/011923be40611f4ff282f5abfc88114c.jpg',
                    description: 'Anti Gagal, Tips Mudah Membuat Nail Art Sendiri di Rumah',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NailArtPage()),
                      );
                    },
                  ),
                  SizedBox(height: 16.0),
                  CardColumn(
                    imageUrl: 'https://meltonlearning.com.au/wp-content/uploads/2020/12/GettyImages-167157698.jpg',
                    description: 'Tips Menjaga Makeup Tahan Lama Seharian',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Makeup()),
                      );
                    },
                  ),
                  SizedBox(height: 16.0),
                  CardColumn(
                    imageUrl: 'https://image.popbela.com/content-images/post/20211015/1-5135fcce64dcbcf3c8e96cc2b392ee43.jpg?width=1600&format=webp&w=1600',
                    description: 'Tips dan Cara Mewarnai Rambut Sendiri di Rumah',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WarnaRambut()),
                      );
                    },
                  ),
                  SizedBox(height: 16.0),
                  // ... tambahkan card lainnya sesuai kebutuhan
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement the search results based on the query
    return Center(
      child: Text('Search results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement suggestions based on the query
    return Center(
      child: Text(' $query'),
    );
  }
}

class CardColumn extends StatelessWidget {
  final String imageUrl;
  final String description;
  final VoidCallback? onPressed;

  CardColumn({
    required this.imageUrl,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
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
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Remaining classes remain unchanged
