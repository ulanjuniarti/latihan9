import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lunar Beauty'),
        backgroundColor: Color(0xFFE2E2E2),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFE2E2E2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://i.postimg.cc/brrCVVbH/alat-kecantikan-1.jpg',
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Welcome To Lunar Beauty Tutorials',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Your Beauty Journey Starts Here',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: _buildCard('Make up', 'https://i.pinimg.com/564x/47/55/c9/4755c98c5d3ffa23c099f89b0ff038dc.jpg'),
                  ),
                  Expanded(
                    child: _buildCard('Skincare', 'https://i.pinimg.com/564x/18/f3/7f/18f37f7f0f5b301ca6af0bbe5ab67175.jpg'),
                  ),
                  Expanded(
                    child: _buildCard('Body', 'https://i.pinimg.com/564x/4c/9f/28/4c9f28244edc0eb4508b48505d6d6ebb.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: _buildCard('Hair', 'https://i.pinimg.com/564x/c0/09/08/c00908e03c866ede8ce174eca9f29dab.jpg'),
                  ),
                  Expanded(
                    child: _buildCard('Nails', 'https://i.pinimg.com/564x/c0/d8/af/c0d8afa153ecedb877964df87e4c0afc.jpg'),
                  ),
                  Expanded(
                    child: _buildCard('Brands', 'https://i.pinimg.com/564x/6c/93/9a/6c939a0e7de4c28b44eb35eec7eb83ec.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title, String imageUrl) {
    return Column(
      children: [
        Card(
          elevation: 3.0,
          color: Colors.blueGrey[100],
          child: Container(
            height: 80.0,
            width: 80.0,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
